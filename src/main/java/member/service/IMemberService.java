package member.service;

import member.vo.MemberVo;

import java.util.List;

public interface IMemberService {

    /**
     * 전체 리스트를 가져오는 메서드
     * @return MemberVo를 담은 리스트 반환
     */
    public List<MemberVo> getAllMember();
}
