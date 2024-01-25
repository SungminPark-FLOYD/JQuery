package buyer.service;

import buyer.dao.BuyerDaoImpl;
import buyer.dao.IBuyerDao;
import buyer.vo.BuyerVo;

import java.util.List;

public class BuyerServiceImpl implements IBuyerService{
    private static BuyerServiceImpl instance = null;
    private IBuyerDao dao;
    private BuyerServiceImpl() {
        dao = BuyerDaoImpl.getInstance();
    }
    public static BuyerServiceImpl getInstance() {
        if(instance == null) instance = new BuyerServiceImpl();
        return instance;
    }
    @Override
    public BuyerVo getAllBuyer(String buyerId) {
        return dao.getAllBuyer(buyerId);
    }

    @Override
    public List<BuyerVo> selectByBuyerName() {
        return dao.selectByBuyerName();
    }
}
