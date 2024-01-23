package prod.dao;

import prod.vo.ProdVo;
import util.DBUtil3;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProdDaoImpl implements IProdDao{

    //db관련 변수 선언
    private Connection conn = null;
    private ResultSet rs = null;
    private PreparedStatement pstmt = null;

    private static ProdDaoImpl instance = null;
    private ProdDaoImpl() {}
    public static ProdDaoImpl getInstance(){
        if(instance == null) instance = new ProdDaoImpl();
        return instance;
    }
    @Override
    public List<ProdVo> selectByLgu(String lprod_gu) {
        List<ProdVo> prodList = null;

        try {
            conn = DBUtil3.getConnection();

            String sql = "select PROD_ID, PROD_NAME from PROD where PROD_LGU = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, lprod_gu);
            rs = pstmt.executeQuery();
            prodList = new ArrayList<ProdVo>();

            while (rs.next()){
                ProdVo vo = new ProdVo();
                vo.setProd_id(rs.getString("prod_id"));
                vo.setProd_name(rs.getString("prod_name"));
                prodList.add(vo);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            if(conn != null) try {conn.close();} catch (SQLException e) {}
            if(rs != null) try {rs.close();} catch (SQLException e) {}
            if(pstmt != null) try {pstmt.close();} catch (SQLException e) {}
        }
        return prodList;
    }

    @Override
    public ProdVo selectById(String prod_id) {
        ProdVo vo = null;

        try {
            conn = DBUtil3.getConnection();

            String sql = " select PROD_ID, PROD_NAME, PROD_LGU, PROD_BUYER, PROD_COST, " +
                         " PROD_PRICE, PROD_SALE from PROD where PROD_ID = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, prod_id);
            rs = pstmt.executeQuery();

            if(rs.next()){
                vo = new ProdVo();
                vo.setProd_id(rs.getString("prod_id"));
                vo.setProd_name(rs.getString("prod_name"));
                vo.setProd_lgu(rs.getString("prod_lgu"));
                vo.setProd_buyer(rs.getString("prod_buyer"));
                vo.setProd_cost(rs.getInt("prod_cost"));
                vo.setProd_price(rs.getInt("prod_price"));
                vo.setProd_sale(rs.getInt("prod_sale"));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            if(conn != null) try {conn.close();} catch (SQLException e) {}
            if(rs != null) try {rs.close();} catch (SQLException e) {}
            if(pstmt != null) try {pstmt.close();} catch (SQLException e) {}
        }

        return vo;
    }
}
