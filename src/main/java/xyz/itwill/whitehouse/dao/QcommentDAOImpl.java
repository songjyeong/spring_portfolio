package xyz.itwill.whitehouse.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import xyz.itwill.whitehouse.dto.Qcomment;
import xyz.itwill.whitehouse.mapper.QcommentMapper;

@Repository
@RequiredArgsConstructor
public class QcommentDAOImpl implements QcommentDAO{
	private final SqlSession sqlSession;
	
	@Override
	public int insertQcomment(Qcomment qcomment) {
		return sqlSession.getMapper(QcommentMapper.class).insertQcomment(qcomment);
	}
	
	@Override
	public int updateQcomment(Qcomment qcomment) {
		return sqlSession.getMapper(QcommentMapper.class).updateQcomment(qcomment);
	}
	
	@Override
	public int deleteQcomment(int cNum) {
		return sqlSession.getMapper(QcommentMapper.class).deleteQcomment(cNum);
	}
	
	@Override
	public int deleteQnacomment(int cQnum) {
		return sqlSession.getMapper(QcommentMapper.class).deleteQnacomment(cQnum);
	}
	
	@Override
	public int selectCountQcomment(int cQnum) {
		return sqlSession.getMapper(QcommentMapper.class).selectCountQcomment(cQnum);
	}
	
	@Override
	public List<Qcomment> selectQcommentList(Map<String, Object> map) {
		return sqlSession.getMapper(QcommentMapper.class).selectQcommentList(map);
	}
}
