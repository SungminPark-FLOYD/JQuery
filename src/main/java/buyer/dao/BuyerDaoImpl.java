package buyer.dao;

import buyer.vo.BuyerVo;
import org.apache.ibatis.session.SqlSession;
import util.mybatisUtil;

import java.util.List;

public class BuyerDaoImpl implements IBuyerDao{
    private static BuyerDaoImpl instance = null;
    private BuyerDaoImpl() {}

    public static BuyerDaoImpl getInstance(){
        if(instance == null) instance = new BuyerDaoImpl();
        return instance;
    }
    @Override
    public BuyerVo getAllBuyer(String buyerId) {
        BuyerVo buyerVo = null;
        SqlSession session = null;

        try {
            session = mybatisUtil.getSqlSession();
            buyerVo = session.selectOne("buyer.getAllBuyer",buyerId);

        } catch (Exception e) {
            e.printStackTrace();
        } finally { if(session != null) session.close();}

        return buyerVo;
    }

    @Override
    public List<BuyerVo> selectByBuyerName() {
        List<BuyerVo> buyerList = null;
        SqlSession session = null;

        try {
            session = mybatisUtil.getSqlSession();
            buyerList = session.selectList("buyer.selectByBuyerName");

        } catch (Exception e) {
            e.printStackTrace();
        } finally { if(session != null) session.close();}
        return buyerList;
    }
}
