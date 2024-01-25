package member;

import buyer.service.BuyerServiceImpl;
import buyer.vo.BuyerVo;
import member.service.MemberServiceImpl;
import member.vo.MemberVo;

import java.util.List;

public class controller {
    public static void main(String[] args) {
        BuyerServiceImpl service = BuyerServiceImpl.getInstance();

        BuyerVo vo = service.getAllBuyer("P10102");

        vo.toString();
    }


}
