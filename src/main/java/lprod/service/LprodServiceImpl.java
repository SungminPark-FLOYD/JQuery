package lprod.service;

import lprod.dao.ILprodDao;
import lprod.dao.LprodDaoImpl;
import lprod.vo.LprodVo;

import java.util.List;

public class LprodServiceImpl implements ILprodService{
    private static LprodServiceImpl instance = null;

    ILprodDao dao;

    private LprodServiceImpl() {
        dao = LprodDaoImpl.getInstance();
    }

    public static LprodServiceImpl getInstance() {
        if(instance == null) instance = new LprodServiceImpl();
        return instance;
    }
    @Override
    public List<LprodVo> selectLprod() {
        return dao.selectLprod();
    }
}
