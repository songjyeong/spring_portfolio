package xyz.itwill.whitehouse.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

import org.apache.commons.io.FileUtils;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import lombok.RequiredArgsConstructor;
import xyz.itwill.whitehouse.dto.Board;
import xyz.itwill.whitehouse.dto.Qcomment;
import xyz.itwill.whitehouse.dto.Qna;
import xyz.itwill.whitehouse.service.QcommentService;
import xyz.itwill.whitehouse.service.QnaService;
import xyz.itwill.whitehouse.util.Pager;


@Controller
@RequiredArgsConstructor
public class QnaController {
	private final QnaService qnaService;
	private final QcommentService qcommentService;
	
	@RequestMapping("/qna")
	public String qna() {
		return "qna/qna_list";
	}
	
	// qna 리스트 출력
	@RequestMapping(value = "qna_list", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> qnaList(@RequestParam(defaultValue = "1") int pageNum){
		int totalBoard=qnaService.getQnaCount();
		int pageSize=10;
		int blockSize=4;
		
		Pager pager=new Pager(pageNum, totalBoard, pageSize, blockSize);
		
		Map<String, Object> pagerMap=new HashMap<String, Object>();
		pagerMap.put("startRow", pager.getStartRow());
		pagerMap.put("endRow", pager.getEndRow());
		
		Map<String, Object> returnMap=new HashMap<String, Object>();
		returnMap.put("qnaList", qnaService.getQnaList(pagerMap));
		returnMap.put("pager", pager);
		
		return returnMap;
	}
	
	// qna 검색 리스트 출력
	@RequestMapping(value = "/qna_search_list", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> qnaSearchList(@RequestParam(defaultValue = "1") int pageNum,@RequestParam String searchKeyword) {
		//RESTBOARD 테이블에 저장된 모든 게시글의 갯수를 반환받아 저장
		int totalBoard=qnaService.getQnaSearchCount(searchKeyword);
		int pageSize=10;//하나의 페이지에 출력될 게시글의 갯수 저장
		int blockSize=4;//하나의 블럭에 출력될 페이지 번호의 갯수 저장
		
		//페이징 처리 관련 값을 제공하기 위한 Pager 객체를 생성하여 저장
		Pager pager=new Pager(pageNum, totalBoard, pageSize, blockSize);
		
		//BoardService 객체의 메소드를 호출하기 위해 매개변수에 전달하기 위한 Map 객체 생성
		// => 요청 페이지의 시작 행번호와 종료 행번호를 Map 객체의 엔트리로 저장하여 SQL 명령에게 제공
		Map<String, Object> pagerMap=new HashMap<String, Object>();
		pagerMap.put("startRow", pager.getStartRow());
		pagerMap.put("endRow", pager.getEndRow());
		pagerMap.put("qTitle", searchKeyword);
		
		//요청 처리 메소드의 반환값으로 사용될 Map 객체 생성
		// => RESTBOARD 테이블에 저장된 게시글 목록과 페이징 처리 관련 값을 Map 객체의 엔트리로 
		//저장하여 JSON 형태의 데이타로 응답 
		Map<String, Object> returnMap=new HashMap<String, Object>();
		returnMap.put("qnaList", qnaService.getQnaSearchList(pagerMap));
		returnMap.put("pager", pager);
		
		return returnMap;
	}
	
	// 게시글 수정
	@RequestMapping(value = "/qna_modify/qnum={qnum}", method = RequestMethod.GET)
	public String qnaModify(@PathVariable int qnum,Model model)	{
		Qna qna =qnaService.getQna(qnum);
		model.addAttribute("getqna",qna);
		
		return "qna/qna_modify";
	}
	
	@RequestMapping(value="qna_modify", method = RequestMethod.POST)
	public String qModify(Qna qna) {
		qnaService.modifyQna(qna);
		
		return "redirect:qna";
	}
	
	// 댓글 조회
	@RequestMapping(value = "/comment_list", method = RequestMethod.GET)
	@ResponseBody
		public Map<String , Object> qnaCommentList(@RequestParam(defaultValue = "1")int pageNum,@RequestParam int cQnum){
			int totalBoard=qcommentService.getCountQcomment(cQnum);
			int pageSize=5;
			int blockSize=3;
			
			Pager pager=new Pager(pageNum, totalBoard, pageSize, blockSize);
						
			Map<String, Object> pagerMap=new HashMap<String, Object>();
			pagerMap.put("startRow", pager.getStartRow());
			pagerMap.put("endRow", pager.getEndRow());
			pagerMap.put("cQnum", cQnum);
			
			Map<String, Object> returnComment = new HashMap<String, Object>();
			returnComment.put("commentList",qcommentService.getQcommentList(pagerMap));
			returnComment.put("pager", pager);
			//returnComment.put("count", qcommentService.getCountQcomment(cQnum));
			return returnComment;
		}
	
	// 댓글 추가
	@RequestMapping(value = "comment_add", method = RequestMethod.POST)
	@ResponseBody
	public String commentAdd(@RequestBody Qcomment qcomment) {
		//qcomment.setContent(HtmlUtils.htmlEscape(restBoard.getContent())); // 회피문자 설정
		qcommentService.addQcomment(qcomment);
		return "success";
	}
	
	// 댓글 수정
	@RequestMapping(value="comment_modify", method = RequestMethod.POST)
	@ResponseBody
	public String commentModify(@RequestBody Qcomment qcomment) {
		qcommentService.modifyQcomment(qcomment);
		return "success";
	}
	
	// 댓글 삭제
		@RequestMapping(value = "/comment_remove/{cnum}", method = RequestMethod.DELETE)
		@ResponseBody
		public String commentRemove(@PathVariable int cnum) {
			qcommentService.removeQComment(cnum);
			return "success";
		}
	
	
		// 게시글 작성
		@RequestMapping(value = "/qna_write")
		public String qnaWrite() {
			return "qna/qna_write";
		}
		
		@RequestMapping(value="/qna_add", method = RequestMethod.POST)
		public String addQna(Qna qna) {
			
			qnaService.addQna(qna);
			return "redirect:qna";
		}
	
	// 게시글 조회
	@RequestMapping(value = "/qna_detail/qnum={qnum}", method = RequestMethod.GET)
	public String qnaDetail(@PathVariable int qnum, Model model) {
		Qna qna = qnaService.getQna(qnum);
		int qcount = qcommentService.getCountQcomment(qnum);
		model.addAttribute("getqna", qna);
		model.addAttribute("qcount", qcount);
		return "qna/qna_detail";
	}
	
	
	// 게시글 삭제
	@RequestMapping(value = "/qna_remove/{qnum}", method = RequestMethod.GET)
	public String QnaRemove(@PathVariable int qnum) {
		qnaService.removeQna(qnum);
		qcommentService.removeQnacomment(qnum);
		return "qna/qna_list";
	}
	
	@RequestMapping(value="/qna_image_upload", produces = "application/json; charset=utf8")
	@ResponseBody
	public String uploadSummernoteImageFile(@RequestParam("file") MultipartFile multipartFile, HttpServletRequest request )  {
		Map<String, Object> jsonObject = new HashMap<String, Object>();
		
        /*
		 * String fileRoot = "C:\\summernote_image\\"; // 외부경로로 저장을 희망할때.
		 */
		
		// 내부경로로 저장
		String contextRoot = new HttpServletRequestWrapper(request).getRealPath("/");
		String fileRoot = contextRoot+"resources/fileupload/";
		
		String originalFileName = multipartFile.getOriginalFilename();	//오리지날 파일명
		String extension = originalFileName.substring(originalFileName.lastIndexOf("."));	//파일 확장자
		String savedFileName = UUID.randomUUID() + extension;	//저장될 파일 명
		
		File targetFile = new File(fileRoot + savedFileName);	
		try {
			InputStream fileStream = multipartFile.getInputStream();
			FileUtils.copyInputStreamToFile(fileStream, targetFile);	//파일 저장
			jsonObject.put("url", "/resources/fileupload/"+savedFileName); // contextroot + resources + 저장할 내부 폴더명
			jsonObject.put("responseCode", "success");
				
		} catch (IOException e) {
			FileUtils.deleteQuietly(targetFile);	//저장된 파일 삭제
			jsonObject.put("responseCode", "error");
			e.printStackTrace();
		}
		String a = jsonObject.toString();
		return a;
	}
	
}
