package member.service;

import member.dao.IMemberDao;
import member.dao.MemberDaoImpl;
import member.vo.MemberVo;

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
}
