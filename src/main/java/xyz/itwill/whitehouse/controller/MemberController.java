package xyz.itwill.whitehouse.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import xyz.itwill.whitehouse.dto.Member;
import xyz.itwill.whitehouse.dto.Reservation;
import xyz.itwill.whitehouse.exception.LoginAuthFailException;
import xyz.itwill.whitehouse.exception.MemberExistsException;
import xyz.itwill.whitehouse.exception.MemberNotFoundException;
import xyz.itwill.whitehouse.service.MemberService;

@Controller
//@RequestMapping("/member")
@RequiredArgsConstructor
public class MemberController {

	private final MemberService memberService;
	private static final Logger logger=LoggerFactory.getLogger(MemberController.class);


	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		return "member/member_login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@ModelAttribute Member member, HttpSession session)
			throws LoginAuthFailException, MemberNotFoundException {


		memberService.loginAuth(member);
		session.setAttribute("loginMember", memberService.getMember(member.getId()));

		return "redirect:/";
	}

	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String joinAfter() throws MemberExistsException {

		return "member/member_join_after";
	}

	@RequestMapping(value = "/join_detail", method = RequestMethod.GET)
	public String joinMain() throws MemberExistsException {

		return "member/member_join_main";
	}

	@RequestMapping(value = "/join_detail", method = RequestMethod.POST)
	public String joinMain(@ModelAttribute Member member, Model model)
			throws MemberExistsException {

		memberService.addMember(member);
		model.addAttribute("member", member);

		return "member/member_join_success";
	}

	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}

	@GetMapping("/member/search")
	public String memberSearch() {
		return "popup/popup_search_member";
	}
	
	@PostMapping("/member/search_member_id")
	@ResponseBody
	public Map<String, Object> memberSearchId(@RequestBody Member member) {
		
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("member", member);
		
		return map;
	}
	
	@PostMapping("/member/search_member")
	@ResponseBody
	public Map<String, Object> memberSearchPassword(@RequestBody Member member) {
		
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("member", memberService.getSearchMember(member));
		
		return map;
	}
	
	@PostMapping("/member/search_password")
	@ResponseBody
	public String newPassword(@RequestBody Member member) {
		
//		memberService.getMember(id).getPassword()
//		searchAuth();
		return "success";
	}
	
	
	
	
	
	
	
	@ExceptionHandler(MemberExistsException.class)
	public String memberExceptionHandler(MemberExistsException exception, Model model) {
		model.addAttribute("message", exception.getMessage());
		model.addAttribute("member", exception.getMember());
		return "member/member_join_after";
	}

	@ExceptionHandler(MemberNotFoundException.class)
	public String memberExceptionHandler(MemberNotFoundException exception) {
		return "member/member_error";
	}

	@ExceptionHandler(LoginAuthFailException.class)
	public String userinfoExceptionHandler(LoginAuthFailException exception, Model model) {
		model.addAttribute("message", exception.getMessage());
		model.addAttribute("id", exception.getId());
		return "member/member_login";
	}



	
	
	
	
	
	
	
	
	
	
	
	
	@RequestMapping(value = "/view", method = RequestMethod.GET)
	public String view(@ModelAttribute String id ,Member member,HttpSession session, Model model) throws MemberExistsException, MemberNotFoundException {
		Member loginMember=(Member)session.getAttribute("loginMember");
		String loginid = loginMember.getId();
		model.addAttribute("member",memberService.getMember(loginid));
		return "mypage/member_view";
	}

	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public String changeMem(@ModelAttribute Member member, Model model, HttpSession session) throws Exception {

		Member loginMember=(Member)session.getAttribute("loginMember");
		String loginid = loginMember.getId();
		model.addAttribute("member",memberService.getMember(loginid));


		return "mypage/change_member";
	}

	@RequestMapping(value = "/remove", method = RequestMethod.GET)
	public String remove(@ModelAttribute Member member,HttpSession session, Model model) throws Exception {

		Member loginMember=(Member)session.getAttribute("loginMember");
		String loginid = loginMember.getId();
		model.addAttribute("member",memberService.getMember(loginid));

//		memberService.removeMember(loginid);
//		model.addAttribute("member", member);

		return "mypage/leave_member";
	}


	@RequestMapping(value = "/reserv", method = RequestMethod.GET)
	public String reserv(@ModelAttribute Reservation reservation, HttpSession session, Model model) throws MemberExistsException {
		Member loginMember=(Member)session.getAttribute("loginMember");
		String id = loginMember.getId();
//		List<Reservation> reservationList;
//		reservationList = memberService.selectreserv(id);
		model.addAttribute("reservationList", memberService.selectreserv(id));
		return "mypage/search_reservation";
	}



























//
//
//	@RequestMapping(value = "/go_join", method = RequestMethod.GET)
//	public String gojoinmember(@ModelAttribute Member member) throws MemberExistsException {
//		return "member/go_join";
//	}
//	@RequestMapping(value = "/write", method = RequestMethod.GET)
//	public String join() throws Exception {
//		return "member/member_write";
//	}
//
//	@RequestMapping(value = "/write", method = RequestMethod.POST)
//	public String join(@ModelAttribute Member member) throws MemberExistsException {
//		memberService.addMember(member);
//		return "redirect:/member/login";
//	}
//
//
//
//	@RequestMapping(value = "/join_detail", method = RequestMethod.GET)
//	public String joindetail(@ModelAttribute Member member) throws MemberExistsException {
//		return "member/join_detail";
//	}
//
//	@RequestMapping(value = "/chkid", method = RequestMethod.GET )
//	@ResponseBody
//	public Map<String, Object> idchk(@RequestParam String id) {
//		int chkid = memberService.chkid(id);
//
//		Map<String, Object> returnMap=new HashMap<String, Object>();
//		returnMap.put("chkid", chkid);
//
//		return returnMap;
//	}
//
//	@RequestMapping(value = "/success", method = RequestMethod.POST)
//	public String login(@ModelAttribute Member member, Model model) {
//		model.addAttribute("member",memberService.getMember(member.getId()));
//		return "member/login_success";
//	}
//
//	@RequestMapping("/logout")
//	public String logout(HttpSession session) {
//		session.invalidate();
//		return "redirect:/member/login";
//	}
//
//
//
//	@RequestMapping("/view")
//	public String view(@RequestParam String id, Model model) throws MemberNotFoundException {
//		model.addAttribute("member", memberService.getMember(id));
//		return "member/member_view";
//	}
//
//
//	// 회원정보를 변경하는 메거드
//
//	@RequestMapping(value = "/modify", method = RequestMethod.POST)
//	public String modify(@ModelAttribute Member member, HttpSession session) throws MemberNotFoundException {
//		memberService.modifyMember(member);
//		Member loginMember=(Member)session.getAttribute("loginMember");
//
//		if(loginMember.getId().equals(member.getId())) {
//			session.setAttribute("loginMember", memberService.getMember(member.getId()));
//		}
//		return "redirect:/member/view?id="+member.getId();
//	}
//
//	@ExceptionHandler(MemberExistsException.class)
//	public String memberExceptionHandler(MemberExistsException exception, Model model) {
//		model.addAttribute("message", exception.getMessage());
//		model.addAttribute("member", exception.getMember());
//		return "member/member_write";
//	}
//
//	@ExceptionHandler(MemberNotFoundException.class)
//	public String memberExceptionHandler(MemberNotFoundException exception) {
//		return "member/member_error";
//	}
//
//	@ExceptionHandler(LoginAuthFailException.class)
//	public String userinfoExceptionHandler(LoginAuthFailException exception, Model model) {
//		model.addAttribute("message", exception.getMessage());
//		model.addAttribute("id", exception.getId());
//		return "member/member_login";
//	}

}
