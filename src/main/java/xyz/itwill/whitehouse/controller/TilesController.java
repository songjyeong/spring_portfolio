package xyz.itwill.whitehouse.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import xyz.itwill.whitehouse.dto.Board;
import xyz.itwill.whitehouse.service.BoardService;
import xyz.itwill.whitehouse.service.TestService;
import xyz.itwill.whitehouse.util.Pager;


@Controller
@RequiredArgsConstructor
public class TilesController {
	
	private final BoardService boardService;
	
	@RequestMapping("/")
	public String tiles(Model model) {
		
		Map<String, Object> pagerMap=new HashMap<String, Object>();
		
		pagerMap.put("startRow", 1);
		pagerMap.put("endRow", 3);
		
		model.addAttribute("boardList", boardService.getBoardList(pagerMap));
		return "main";
	}
}
