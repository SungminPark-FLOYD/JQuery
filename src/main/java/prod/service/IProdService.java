package prod.service;

import prod.vo.ProdVo;

import java.util.List;

public interface IProdService {
    /**
     * lprod_gu를 받아서 일치하는 상품목록을 반환하는 메서드
     * @param lprod_gu 입력받은 상품분류코드
     * @return List<ProdVo>로 검색결과 반환
     */
    public List<ProdVo> selectByLgu(String lprod_gu);

    /**
     * prod_id를 받아서 일치하는 상품을 반환하는 메서드
     * @param prod_id 상품id
     * @return 일치하는 상품 정보
     */
    public ProdVo selectById(String prod_id);
}
