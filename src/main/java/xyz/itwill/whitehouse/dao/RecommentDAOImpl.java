package xyz.itwill.whitehouse.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import xyz.itwill.whitehouse.dto.Recomment;
import xyz.itwill.whitehouse.mapper.RecommentMapper;

@Repository
@RequiredArgsConstructor
public class RecommentDAOImpl implements RecommentDAO {
	private final SqlSession sqlSession;
	
	@Override
	public int insertNewRecommnet(Recomment recommnet) {
		return sqlSession.getMapper(RecommentMapper.class).insertNewRecommnet(recommnet);
	}
	
	@Override
	public int insertRecomment(Recomment recommnet) {
		return sqlSession.getMapper(RecommentMapper.class).insertRecomment(recommnet);
	}
	
	@Override
	public int updateNewStepup(Recomment recomment) {
		return sqlSession.getMapper(RecommentMapper.class).updateNewStepup(recomment);
	}
	
	@Override
	public int updateStepup(Recomment recommnet) {
		return sqlSession.getMapper(RecommentMapper.class).updateStepup(recommnet);
	}
	
	@Override
	public int updateRecomment(Recomment recommnet) {
		return sqlSession.getMapper(RecommentMapper.class).updateRecomment(recommnet);
	}
	
	@Override
	public int removeRecomment(int reNum) {
		return sqlSession.getMapper(RecommentMapper.class).removeRecomment(reNum);
	}
	
	@Override
	public int removeAllRecomment(int reVnum) {
		return sqlSession.getMapper(RecommentMapper.class).removeAllRecomment(reVnum);
	}
	@Override
	public Recomment selectRecomment(int reNum) {
		return sqlSession.getMapper(RecommentMapper.class).selectRecomment(reNum);
	}
	
	@Override
	public List<Recomment> selectRecommentList(Map<String, Object> map) {
		return sqlSession.getMapper(RecommentMapper.class).selectRecommentList(map);
	}
}
