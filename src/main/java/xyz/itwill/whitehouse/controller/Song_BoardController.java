package xyz.itwill.whitehouse.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.jsp.tagext.BodyContent;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import xyz.itwill.whitehouse.dto.Board;
import xyz.itwill.whitehouse.service.BoardService;
import xyz.itwill.whitehouse.service.Song_BoardService;
import xyz.itwill.whitehouse.util.Pager;

@Controller
@RequiredArgsConstructor
public class Song_BoardController {
	private final Song_BoardService boardService;
	private final BoardService beforeService;
	
	// 공지사항 메인화면
	@RequestMapping("/board_song")
	public String board() {
		return "board/board_list_Song";
	}
	/** 
	 * pagerMap에 btitle추가
	 * requestparam없어서 추가
	 * */
	// 페이징처리
	@RequestMapping(value = "/board_search_list", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> boardList(@RequestParam(defaultValue = "1") int pageNum,@RequestParam String searchKeyword) {
		//RESTBOARD 테이블에 저장된 모든 게시글의 갯수를 반환받아 저장
		int totalBoard=boardService.getBoardSearchCount(searchKeyword);
		int pageSize=10;//하나의 페이지에 출력될 게시글의 갯수 저장
		int blockSize=4;//하나의 블럭에 출력될 페이지 번호의 갯수 저장
		
		//페이징 처리 관련 값을 제공하기 위한 Pager 객체를 생성하여 저장
		Pager pager=new Pager(pageNum, totalBoard, pageSize, blockSize);
		
		//BoardService 객체의 메소드를 호출하기 위해 매개변수에 전달하기 위한 Map 객체 생성
		// => 요청 페이지의 시작 행번호와 종료 행번호를 Map 객체의 엔트리로 저장하여 SQL 명령에게 제공
		Map<String, Object> pagerMap=new HashMap<String, Object>();
		pagerMap.put("startRow", pager.getStartRow());
		pagerMap.put("endRow", pager.getEndRow());
		pagerMap.put("bTitle", searchKeyword);
		
		//요청 처리 메소드의 반환값으로 사용될 Map 객체 생성
		// => RESTBOARD 테이블에 저장된 게시글 목록과 페이징 처리 관련 값을 Map 객체의 엔트리로 
		//저장하여 JSON 형태의 데이타로 응답 
		Map<String, Object> returnMap=new HashMap<String, Object>();
		returnMap.put("boardList", boardService.getBoardTitle(pagerMap));
		returnMap.put("pager", pager);
		
		return returnMap;
	}
	
	@RequestMapping(value = "/board_detail_Song/bnum={bnum}", method = RequestMethod.GET)
	public String boardDetail(@PathVariable int bnum, Model model) {
		beforeService.updateCountBoard(bnum);
		Board board = beforeService.getBoard(bnum);
		model.addAttribute("getboard", board);
		return "board/board_detail_Song";
	}
	
}
