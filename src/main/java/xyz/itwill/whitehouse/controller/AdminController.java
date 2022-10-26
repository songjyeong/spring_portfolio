package xyz.itwill.whitehouse.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.multipart.MultipartFile;

import lombok.RequiredArgsConstructor;
import xyz.itwill.whitehouse.dto.Product;
import xyz.itwill.whitehouse.dto.Reservation;
import xyz.itwill.whitehouse.dto.Reservation_Song;
import xyz.itwill.whitehouse.service.AdminService;

/**
 * localhost:8000/whitehouse/egy
 * @requestmapping(/eqy)
 *  */
@Controller
@RequestMapping("/admin")
@RequiredArgsConstructor
public class AdminController {

	private final AdminService adminService;
	private final WebApplicationContext context;

	@RequestMapping("")
	public String admin() {
		return "admin";
	}
	
	
	
	

////////////////////////////////////////////////////
//	테스트
////////////////////////////////////////////////////
	
//	@RequestMapping("/test")
//	@ResponseBody
//	public List<Product> adminProduct() {
//		return adminService.getProductList();
//	}
	
////////////////////////////////////////////////////
////////////////////////////////////////////////////
	
	
	
	
	
////////////////////////////////////////////////////
//	회원
////////////////////////////////////////////////////
	
	@RequestMapping(value="/admin_member", method=RequestMethod.GET)
	public String adminMember(Model model) {
		model.addAttribute("memberList", adminService.getMemberList());
		return "admin/admin_member/admin_member_page";
	}
////////////////////////////////////////////////////
////////////////////////////////////////////////////

	
	
	
////////////////////////////////////////////////////
//	제품
////////////////////////////////////////////////////


	@RequestMapping("/admin_product")
	public String adminProduct(Model model) {
		model.addAttribute("productList", adminService.getProductList());
		return "admin/admin_product/admin_product_page";
	}
	
	@RequestMapping(value="/admin_product/image_view/{num}", method = RequestMethod.GET)
	public String adminProductViewImage(@PathVariable int num, Model model) {
		
		model.addAttribute("product",adminService.getProductNum(num));

		return "popup/popup_admin_product_modify";
	}

	@RequestMapping(value="/admin_product/product_image_upload", method = RequestMethod.POST)
	@ResponseBody
	public String adminProductUploadImage(@RequestParam MultipartFile uploadFile) 
			throws IllegalStateException, IOException {
		
		String uploadDirectory=context.getServletContext().getRealPath("/resources/img/preview");
		
		String originalFilename=uploadFile.getOriginalFilename();
		File file=new File(uploadDirectory, originalFilename);
		
		String uploadFilename=originalFilename;
		
		int i=0;
		while(file.exists()) {
			i++;
			int index=originalFilename.lastIndexOf(".");
			uploadFilename=originalFilename.substring(0, index)+"_"+i+originalFilename.substring(index);
			file=new File(uploadDirectory, uploadFilename);
		}
		
		uploadFile.transferTo(file);
		
		return uploadFilename;
	}
	
	@RequestMapping(value="/admin_product/product_image_modify", method = RequestMethod.POST)
	@ResponseBody
	public String adminProductModifyImage(@RequestBody Product product) {
//		public String adminProductModifyImage() {
		adminService.modifyProductImage(product);
		return "success";
	}

////////////////////////////////////////////////////
////////////////////////////////////////////////////
	
	
	
	
	
////////////////////////////////////////////////////
//	예약
////////////////////////////////////////////////////

	@GetMapping("/admin_reserv")
	public String adminReserv(Model model) {
		model.addAttribute("reservList",adminService.getProductList());
		return "admin/admin_reserv/admin_reserv_page";
	}
	
	@RequestMapping("/admin_reserv/test_add")
	public String adminReservTest() {
		
		adminService.addInsertReservTest();
		return "admin/admin_reserv/add_reserv";
	}
	
//	@RequestMapping(value="/admin_reserv/select_reserv", method = RequestMethod.GET)
//	@ResponseBody
//	public Map<String, Object> adminReservSelect() {
//		String r_name="홍길동";
//		System.out.println(r_name);
//		Map<String, Object> map=new HashMap<String, Object>();
//		map.put("abc", adminService.getReservDayList(r_name));
//		return map;
//	}
	
	
	@RequestMapping(value="/admin_reserv/select_reserv", method = RequestMethod.POST)
	@ResponseBody
	public List<Reservation> adminReservSelect(@RequestBody Map<String, String> map) {
		
		return adminService.getReservDayList(map.get("day"));
	}
	
//	@RequestMapping(value="/admin_reserv/select_reserv_list", method = RequestMethod.GET)
//	@ResponseBody
//	public List<Reservation> adminReservSelectList() {
//		
//		return adminService.getReservList();
//	}
////////////////////////////////////////////////////
////////////////////////////////////////////////////

	
	
	
	
////////////////////////////////////////////////////
//	리뷰
////////////////////////////////////////////////////
	
	@RequestMapping("/admin_review")
	public String adminReview() {
		return "admin/admin_review/admin_review_page";
	}
	
}
////////////////////////////////////////////////////
////////////////////////////////////////////////////
