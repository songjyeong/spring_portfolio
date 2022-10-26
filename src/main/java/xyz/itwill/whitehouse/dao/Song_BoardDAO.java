package xyz.itwill.whitehouse.dao;

import java.util.List;
import java.util.Map;

import xyz.itwill.whitehouse.dto.Board;

public interface Song_BoardDAO {
	int selectBoardSearchCount(String bTitle);
	List<Board> songSelectBoardTitle(Map<String, Object> map);
}
