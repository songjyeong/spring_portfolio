package xyz.itwill.whitehouse.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import xyz.itwill.whitehouse.dto.Board;
import xyz.itwill.whitehouse.mapper.Song_BoardMapper;

@Repository
@RequiredArgsConstructor
public class Song_BoardDAOImpl implements Song_BoardDAO{
	private final SqlSession sqlSession;

	@Override
	public List<Board> songSelectBoardTitle(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(Song_BoardMapper.class).songSelectBoardTitle(map);
	}

	@Override
	public int selectBoardSearchCount(String bTitle) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(Song_BoardMapper.class).selectBoardSearchCount(bTitle);
	}
	
}
