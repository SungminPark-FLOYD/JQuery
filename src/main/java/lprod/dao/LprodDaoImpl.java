package lprod.dao;

import lprod.vo.LprodVo;
import util.DBUtil3;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class LprodDaoImpl implements ILprodDao{
    private static LprodDaoImpl instance = null;
    private LprodDaoImpl() {}

    private Connection conn = null;
    private ResultSet rs = null;
    private PreparedStatement pstmt = null;
    public static LprodDaoImpl getInstance(){
        if(instance == null) instance = new LprodDaoImpl();
        return instance;
    }
    @Override
    public List<LprodVo> selectLprod() {
        List<LprodVo> lprodList = null;

        try {
            conn = DBUtil3.getConnection();

            String sql = "select * from LPROD";
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
            lprodList = new ArrayList<LprodVo>();
            while (rs.next()) {
                LprodVo lprodVo = new LprodVo();
                lprodVo.setLprod_id(rs.getInt("lprod_id"));
                lprodVo.setLprod_gu(rs.getString("lprod_gu"));
                lprodVo.setLprod_nm(rs.getString("lprod_nm"));

                lprodList.add(lprodVo);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            if(conn != null) try {conn.close();} catch (SQLException e) {}
            if(rs != null) try {rs.close();} catch (SQLException e) {}
            if(pstmt != null) try {pstmt.close();} catch (SQLException e) {}
        }
        return lprodList;
    }
}
