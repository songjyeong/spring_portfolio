package xyz.itwill.whitehouse.mapper;

import java.util.List;
import java.util.Map;

import xyz.itwill.whitehouse.dto.Board;

/** 
 * selectBoardTitle는 리스트로 출력
 * */
public interface Song_BoardMapper {
	List<Board> songSelectBoardTitle(Map<String, Object> map);
	int selectBoardSearchCount(String bTitle);
}
