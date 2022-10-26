package xyz.itwill.whitehouse.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/info")
public class InfoController {

	@RequestMapping("privacy")
	public String privacy() {
		//TilesView Configuration File의 definition 엘리먼트의 식별자를 반환하여 응답 처리
		return "info/privacy";
	}
	
	@RequestMapping("agree")
	public String agree() {
		//TilesView Configuration File의 definition 엘리먼트의 식별자를 반환하여 응답 처리
		return "info/agree";
	}

}
