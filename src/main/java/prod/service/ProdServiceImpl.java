package prod.service;

import lprod.service.ILprodService;
import prod.dao.IProdDao;
import prod.dao.ProdDaoImpl;
import prod.vo.ProdVo;

import java.util.List;

public class ProdServiceImpl implements IProdService {
    private static ProdServiceImpl instance = null;
    private IProdDao dao;
    private ProdServiceImpl() { dao = ProdDaoImpl.getInstance();}
    public static ProdServiceImpl getInstance(){
        if(instance == null) instance = new ProdServiceImpl();
        return instance;
    }

    @Override
    public List<ProdVo> selectByLgu(String lprod_gu) {
        return dao.selectByLgu(lprod_gu);
    }

    @Override
    public ProdVo selectById(String prod_id) {
        return dao.selectById(prod_id);
    }
}
