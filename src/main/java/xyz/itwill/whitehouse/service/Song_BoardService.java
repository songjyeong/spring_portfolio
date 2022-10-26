package xyz.itwill.whitehouse.service;

import java.util.List;
import java.util.Map;

import xyz.itwill.whitehouse.dto.Board;

public interface Song_BoardService {
	int getBoardSearchCount(String bTitle);
	List<Board> getBoardTitle(Map<String, Object> map);
}
