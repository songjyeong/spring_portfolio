package xyz.itwill.whitehouse.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import xyz.itwill.whitehouse.dto.Test;
import xyz.itwill.whitehouse.service.TestService;

@Controller
@RequestMapping("/test")
@RequiredArgsConstructor
public class TestController {
	
	private final TestService testService;

	@RequestMapping("/hello")
	public String hello() {
		return "/test/test_hello";
	}
	
	@RequestMapping("/search")
	public String search(Model model) {
		model.addAttribute("testList", testService.getTestList());
		return "/test/test_search";
	}
	
//	@RequestMapping()
//	public Map<String, Object> testMap{
//		
//	}
//	
	
	@RequestMapping(value="/search_select",method = RequestMethod.POST)
	@ResponseBody
	public Test searchSelect(@RequestBody Test test) {
		
//		Map<String, Object> returnMap=new HashMap<String, Object>();
//		returnMap.put("name", "");
//		testService.getTest("aaa", "홍길동");
//		Test test = testService.getTest(map.get("id").toString(), map.get("name").toString());
		
		
		System.out.println();
		System.out.println();
		System.out.println();
		System.out.println(test);
//		System.out.println(map.get("id").toString());
//		
		return testService.getTest(test);
	}
	
	@RequestMapping(value="/test", method=RequestMethod.GET)
	@ResponseBody
	public List<Test> testSearch() {
		
		String select="1";
		
		return testService.selectTestStatusList(select);
	}
}
