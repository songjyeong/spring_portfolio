package xyz.itwill.whitehouse.service;

import java.util.List;
import java.util.Map;

import xyz.itwill.whitehouse.dto.Board;

public interface BoardService {
	void addBoard(Board board);
	void updateBoard(Board board);
	void updateCountBoard(int bNum);
	void removeBoard(int bNum);
	int getBoardCount();
	int getBoardSearchCount(String bTitle);
	Board getBoard(int bNum);
	List<Board> getBoardList(Map<String, Object> map);
	List<Board> getBoardSearchList(Map<String,Object>map);
	
}
