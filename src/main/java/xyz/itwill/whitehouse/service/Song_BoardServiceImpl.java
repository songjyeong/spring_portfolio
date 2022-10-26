package xyz.itwill.whitehouse.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import xyz.itwill.whitehouse.dao.BoardDAO;
import xyz.itwill.whitehouse.dao.Song_BoardDAO;
import xyz.itwill.whitehouse.dto.Board;

@Service
@RequiredArgsConstructor
public class Song_BoardServiceImpl implements Song_BoardService {
	private final Song_BoardDAO boardDAO;

	@Override
	public List<Board> getBoardTitle(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return boardDAO.songSelectBoardTitle(map);
	}

	@Override
	public int getBoardSearchCount(String bTitle) {
		// TODO Auto-generated method stub
		return boardDAO.selectBoardSearchCount(bTitle);
	}

}
