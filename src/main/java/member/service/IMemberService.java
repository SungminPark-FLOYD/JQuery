package member.service;

import member.vo.MemberVo;
import member.vo.ZipVo;

import java.util.List;

public interface IMemberService {

    /**
     * 전체 리스트를 가져오는 메서드
     * @return MemberVo를 담은 리스트 반환
     */
    public List<MemberVo> getAllMember();

    //아이디 중복검사
    public String selectById(String memId);
    //우편번호검색
    public List<ZipVo> selectByDong(String dong);
    //전송(가입신청)
    public int insertMemeber(MemberVo memVo);
}
