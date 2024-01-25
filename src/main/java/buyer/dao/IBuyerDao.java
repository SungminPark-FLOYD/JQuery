package buyer.dao;

import buyer.vo.BuyerVo;

import java.util.List;

public interface IBuyerDao {
    /**
     * buyerId를 사용해서 거래처 상세정보를 반환하는 메서드
     * @param buyerId 거래처 아이디
     * @return buyer_name에 대응된 vo
     */
    public BuyerVo getAllBuyer(String buyerId);

    /**
     * 거래처 이름과 거래처 아이디를 반환하는 메서드
     * @return 거래처 이름과 거래처 아이디를 담은 리스트 반환
     */
    public List<BuyerVo> selectByBuyerName();
}
