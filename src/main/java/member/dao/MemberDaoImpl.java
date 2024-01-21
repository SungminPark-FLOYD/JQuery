package member.dao;

import member.vo.MemberVo;
import util.DBUtil3;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class MemberDaoImpl implements IMemberDao{
    private  static MemberDaoImpl instance = null;

    private MemberDaoImpl() {}
    public static MemberDaoImpl getInstance(){
        if(instance == null) instance = new MemberDaoImpl();
        return instance;
    }
    @Override
    public List<MemberVo> getAllMember() {
        List<MemberVo> memList = null;
         Connection conn = null;
         ResultSet rs = null;
         PreparedStatement pstmt = null;
        try {
            conn = DBUtil3.getConnection();

            String sql = " select MEM_ID," +
                         " MEM_PASS, " +
                         " MEM_NAME, " +
                         " MEM_BIR, " +
                         " MEM_ZIP, " +
                         " MEM_ADD1, " +
                         " MEM_ADD2, " +
                         " MEM_HP, " +
                         " MEM_MAIL " +
                         " from member ";
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
            memList = new ArrayList<MemberVo>();
            while (rs.next()) {
                MemberVo memVo = new MemberVo();
                memVo.setMem_id(rs.getString("mem_id"));
                memVo.setMem_pass(rs.getString("mem_pass"));
                memVo.setMem_name(rs.getString("mem_name"));
                memVo.setMem_bir(rs.getString("mem_bir"));
                memVo.setMem_zip(rs.getString("mem_zip"));
                memVo.setMem_addr1(rs.getString("mem_add1"));
                memVo.setMem_addr2(rs.getString("mem_add2"));
                memVo.setMem_hp(rs.getString("mem_hp"));
                memVo.setMem_mail(rs.getString("mem_mail"));
                memList.add(memVo);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            if (rs!=null) try{rs.close();}catch (SQLException e) {}
            if (pstmt!=null) try{pstmt.close();}catch (SQLException e) {}
            if (conn!=null) try{conn.close();}catch (SQLException e) {}
        }

        return memList;
    }
}
