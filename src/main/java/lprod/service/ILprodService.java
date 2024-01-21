package lprod.service;

import lprod.vo.LprodVo;

import java.util.List;

public interface ILprodService {
    /**
     * 목록을 가져오는 메서드
     * @return lprod_id, lprod_gu, lprod_nm을 가져온다
     */
    public List<LprodVo> selectLprod();
}
