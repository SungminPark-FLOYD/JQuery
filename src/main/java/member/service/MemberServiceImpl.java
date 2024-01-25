package member.service;

import member.dao.IMemberDao;
import member.dao.MemberDaoImpl;
import member.vo.MemberVo;
import member.vo.ZipVo;

import java.util.List;

public class MemberServiceImpl implements IMemberService{
    private static MemberServiceImpl instance = null;
    IMemberDao dao = null;
    private MemberServiceImpl(){
        dao = MemberDaoImpl.getInstance();
    }
    public static MemberServiceImpl getInstance(){
        if(instance == null) instance = new MemberServiceImpl();
        return instance;
    }
    @Override
    public List<MemberVo> getAllMember() {
        return dao.getAllMember();
    }

    @Override
    public String selectById(String memId) {
        return dao.selectById(memId);
    }

    @Override
    public List<ZipVo> selectByDong(String dong) {
        return dao.selectByDong(dong);
    }

    @Override
    public int insertMemeber(MemberVo memVo) {
        return dao.insertMemeber(memVo);
    }
}
