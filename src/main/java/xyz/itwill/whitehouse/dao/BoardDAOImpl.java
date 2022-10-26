package xyz.itwill.whitehouse.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import xyz.itwill.whitehouse.dto.Board;
import xyz.itwill.whitehouse.mapper.BoardMapper;

@Repository
@RequiredArgsConstructor
public class BoardDAOImpl implements BoardDAO{
	private final SqlSession sqlSession;
	
	@Override
	public int insertBoard(Board board) {
		return sqlSession.getMapper(BoardMapper.class).insertBoard(board);
	}
	
	@Override
	public int updateBoard(Board board) {
		return sqlSession.getMapper(BoardMapper.class).updateBoard(board);
	}
	
	@Override
	public int updateCountBoard(int bNum) {
		return sqlSession.getMapper(BoardMapper.class).updateCountBoard(bNum);
	}
	
	@Override
	public int deleteBoard(int bNum) {
		return sqlSession.getMapper(BoardMapper.class).deleteBoard(bNum);
	}
	
	@Override
	public int selectBoardCount() {
		return sqlSession.getMapper(BoardMapper.class).selectBoardCount();
	}
	
	@Override
	public int selectBoardSearchCount(String bTitle) {
		return sqlSession.getMapper(BoardMapper.class).selectBoardSearchCount(bTitle);
	}
	
	@Override
	public Board selectBoard(int bNum) {
		return sqlSession.getMapper(BoardMapper.class).selectBoard(bNum);
	}
	
	@Override
	public List<Board> selectBoardSearchList(Map<String, Object> map) {
		return sqlSession.getMapper(BoardMapper.class).selectBoardSearchList(map);
	}
	
	@Override
	public List<Board> selectBoardList(Map<String, Object>map) {
		return sqlSession.getMapper(BoardMapper.class).selectBoardList(map);
	}
}
