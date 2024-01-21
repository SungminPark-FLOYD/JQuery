package member;

import member.service.MemberServiceImpl;
import member.vo.MemberVo;

import java.util.List;

public class controller {
    public static void main(String[] args) {
        MemberServiceImpl service = MemberServiceImpl.getInstance();

        List<MemberVo> list = service.getAllMember();

        for (MemberVo vo : list) {
            System.out.println(vo.getMem_id());
        }
    }

}
