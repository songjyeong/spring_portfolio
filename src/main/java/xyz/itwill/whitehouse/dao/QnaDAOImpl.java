package xyz.itwill.whitehouse.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import xyz.itwill.whitehouse.dto.Image;
import xyz.itwill.whitehouse.dto.Qna;
import xyz.itwill.whitehouse.mapper.QnaMapper;

@Repository
@RequiredArgsConstructor
public class QnaDAOImpl implements QnaDAO {
	private final SqlSession sqlSession;
	
	@Override
	public int insertQna(Qna qna) {
		return sqlSession.getMapper(QnaMapper.class).insertQna(qna);
	}
	
	@Override
	public int updateQna(Qna qna) {
		return sqlSession.getMapper(QnaMapper.class).updateQna(qna);
	}
	
	@Override
	public int deleteQna(int qNum) {
		return sqlSession.getMapper(QnaMapper.class).deleteQna(qNum);
	}
	
	@Override
	public int selectQnaCount() {
		return sqlSession.getMapper(QnaMapper.class).selectQnaCount();
	}
	
	@Override
	public int selectQnaSearchCount(String qTitle) {
		return sqlSession.getMapper(QnaMapper.class).selectQnaSearchCount(qTitle);
	}
	
	@Override
	public Qna selectQna(int qNum) {
		return sqlSession.getMapper(QnaMapper.class).selectQna(qNum);
	}
	
	@Override
	public List<Qna> selectQnaList(Map<String, Object> map) {
		return sqlSession.getMapper(QnaMapper.class).selectQnaList(map);
	}
	
	@Override
	public List<Qna> selectQnaSearchList(Map<String, Object> map) {
		return sqlSession.getMapper(QnaMapper.class).selectQnaSearchList(map);
	}

	@Override
	public int insertQnaImage(Image image) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(QnaMapper.class).insertQnaImage(image);
	}
}
