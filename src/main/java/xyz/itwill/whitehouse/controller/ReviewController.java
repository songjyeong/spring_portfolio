package xyz.itwill.whitehouse.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import xyz.itwill.whitehouse.dto.Qna;
import xyz.itwill.whitehouse.dto.Recomment;
import xyz.itwill.whitehouse.dto.Reservation;
import xyz.itwill.whitehouse.dto.Review;
import xyz.itwill.whitehouse.service.RecommentService;
import xyz.itwill.whitehouse.service.ReservationService;
import xyz.itwill.whitehouse.service.ReviewService;
import xyz.itwill.whitehouse.util.Pager;

@Controller
@RequiredArgsConstructor
public class ReviewController {
	private final ReviewService reviewService; 
	private final ReservationService reservationService;
	private final RecommentService recommentService;

	@RequestMapping("/review")
	public String review() {
		return "review/review_list";
	}
	
	@RequestMapping(value = "/review_list", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> reviewList(@RequestParam(defaultValue = "1") int pageNum) {
		int totalBoard = reviewService.getReviewCount();
		int pageSize = 10;
		int blockSize=4;
		
		Pager pager = new Pager(pageNum, totalBoard, pageSize, blockSize);
		
		Map<String, Object> pagerMap=new HashMap<String, Object>();
		pagerMap.put("startRow", pager.getStartRow());
		pagerMap.put("endRow", pager.getEndRow());
		
		Map<String, Object> returnMap = new HashMap<String, Object>();
		returnMap.put("reviewList", reviewService.getReviewList(pagerMap));
		returnMap.put("pager", pager);
		
		return returnMap;
	}
	
	// review 검색 리스트 출력
	@RequestMapping(value = "/review_search_list", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> reviewSearchList(@RequestParam(defaultValue = "1") int pageNum,@RequestParam String searchKeyword) {
		int totalBoard=reviewService.getReviewSearchCount(searchKeyword);
		int pageSize=10;
		int blockSize=4;
		
		Pager pager=new Pager(pageNum, totalBoard, pageSize, blockSize);

		Map<String, Object> pagerMap=new HashMap<String, Object>();
		pagerMap.put("startRow", pager.getStartRow());
		pagerMap.put("endRow", pager.getEndRow());
		pagerMap.put("vTitle", searchKeyword);

		Map<String, Object> returnMap=new HashMap<String, Object>();
		returnMap.put("reviewList", reviewService.getReviewSearchList(pagerMap));
		returnMap.put("pager", pager);

		return returnMap;
	}

	
	@RequestMapping(value = "/review_write/{rnum}")
	public String reviewWrite(@PathVariable int rnum,Model model) {
		Reservation reservation = reservationService.getSelectRev(rnum);
		model.addAttribute("getRname", reservation.getRRoomName());
		model.addAttribute("getRnum", rnum);
		return "review/review_write";
	}
	
	@RequestMapping(value="/review_add", method = RequestMethod.POST)
	public String addReview(Review review) {
		
		reviewService.addReview(review);
		return "redirect:review";
	}
	
	@RequestMapping(value = "/review_modify/vnum={vnum}", method = RequestMethod.GET)
	public String reviewModify(@PathVariable int vnum,Model model)	{
		Review review = reviewService.getReview(vnum);
		model.addAttribute("getreview",review);
		return "review/review_modify";
	}
	
	@RequestMapping(value="review_modify", method = RequestMethod.POST)
	public String rModify(Review review) {
		reviewService.modifyReview(review);

		return "redirect:review";
	}
	
	@RequestMapping(value = "/review_detail/vnum={vnum}", method = RequestMethod.GET)
	public String reviewDetail(@PathVariable int vnum, Model model) {
		reviewService.modifyReviewCount(vnum);
		Review review = reviewService.getReview(vnum);
		model.addAttribute("getreview", review);
		return "review/review_detail";
	}
	
	@RequestMapping(value = "/review_remove/{vnum}", method = RequestMethod.GET)
	public String reviewRemove(@PathVariable int vnum) {
		reviewService.removeReview(vnum);
		recommentService.removeAllComment(vnum);
		return "/review/review_list";
	}
	
	// 댓글 출력
	@RequestMapping(value="/recomment_list", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> recommentList(@RequestParam int reVnum){
		
		Map<String, Object> CommentMap = new HashMap<String, Object>();
		CommentMap.put("reVnum", reVnum);
		
		Map<String, Object> returnRecomment = new HashMap<String, Object>();
		returnRecomment.put("recommentList", recommentService.getRecommentList(CommentMap));
		
		return returnRecomment;
	}
	// 새로운 댓글 작성
	@RequestMapping(value = "recomment_newadd", method = RequestMethod.POST)
	@ResponseBody
	public String recommentNewAdd(@RequestBody Recomment recomment) {
		recommentService.modifyNewStepup(recomment);
		recommentService.addNewRecomment(recomment);
		return "success";
	}
	
	// 대댓글 작성
	@RequestMapping(value = "recomment_add", method = RequestMethod.POST)
	@ResponseBody
	public String recommentAdd(@RequestBody Recomment recomment) {
		recommentService.modifyStepup(recomment);
		recommentService.addRecomment(recomment);
		return "success";
	}
	
	
	// 댓글 수정
	@RequestMapping(value="recomment_modify", method = RequestMethod.POST)
	@ResponseBody
	public String recommentModify(@RequestBody Recomment recomment) {
		recommentService.modifyRecomment(recomment);
		return "success";
	}
	
	// 댓글 삭제
	@RequestMapping(value = "/recomment_remove/{reNum}", method = RequestMethod.POST)
	@ResponseBody
	public String recommentRemove(@PathVariable int reNum) {
		recommentService.removeRecomment(reNum);
		return "success";	
	}
	
	
	
}
