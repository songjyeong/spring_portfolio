package xyz.itwill.whitehouse.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import xyz.itwill.whitehouse.dao.BoardDAO;
import xyz.itwill.whitehouse.dto.Board;

@Service
@RequiredArgsConstructor
public class BoardServiceImpl implements BoardService {
	private final BoardDAO boardDAO;

	@Override
	public void addBoard(Board board) {
		boardDAO.insertBoard(board);
	}

	@Override
	public void updateBoard(Board board) {
		boardDAO.updateBoard(board);
	}

	@Override
	public void updateCountBoard(int bNum) {
		boardDAO.updateCountBoard(bNum);
	}

	@Override
	public void removeBoard(int bNum) {
		boardDAO.deleteBoard(bNum);
	}

	@Override
	public int getBoardCount() {
		return boardDAO.selectBoardCount();
	}

	@Override
	public int getBoardSearchCount(String bTitle) {
		return boardDAO.selectBoardSearchCount(bTitle);
	}
	
	@Override
	public Board getBoard(int bNum) {
		return boardDAO.selectBoard(bNum);
	}
	
	@Override
	public List<Board> getBoardList(Map<String, Object>map) {
		return boardDAO.selectBoardList(map);
	}
	
	@Override
	public List<Board> getBoardSearchList(Map<String, Object> map) {
		return boardDAO.selectBoardSearchList(map);
	}
}
