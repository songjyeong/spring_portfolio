package xyz.itwill.whitehouse.dao;

import java.util.List;
import java.util.Map;

import xyz.itwill.whitehouse.dto.Board;

public interface BoardDAO {
	int insertBoard(Board board);
	int updateBoard(Board board);
	int updateCountBoard(int bNum);
	int deleteBoard(int bNum);
	int selectBoardCount();
	int selectBoardSearchCount(String bTitle);
	Board selectBoard(int bNum);
	List<Board> selectBoardSearchList(Map<String, Object>map);
	List<Board> selectBoardList(Map<String, Object>map);
}
