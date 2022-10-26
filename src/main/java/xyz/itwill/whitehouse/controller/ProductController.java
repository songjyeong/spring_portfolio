package xyz.itwill.whitehouse.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.RequiredArgsConstructor;
import xyz.itwill.whitehouse.service.ProductService;


@Controller
@RequiredArgsConstructor
public class ProductController {
	private final ProductService productService;
	
	/*
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String add() {
		return "product/product_add";
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String add(@ModelAttribute Product product, Model model) {
		try {
			productService.addProduct(product);
		} catch (Exception e) {
			model.addAttribute("message","이미 등록한 제품을 입력하였습니다.");
			return "product/product_add";
		}
		return "redirect:/product/product_display";
	}
	
	
	@RequestMapping("/display")
	public String display(Model model) {
		model.addAttribute("productList", productService.getProductList());
		return "product/product_display";
	}
	*/
	
	
	/*
	@RequestMapping(value = "/product", method = RequestMethod.GET)
	public String productList() {
		return "product/product_list";
	}
	*/
	
	
	@RequestMapping(value="/product", method=RequestMethod.GET )
	public String productlist(Model model) {
		model.addAttribute("productList", productService.getProductList());
		return "product/product_list";
	}
	
	
	@RequestMapping(value = "/product_room{num}", method = RequestMethod.GET)
	public String productRoom1(@PathVariable int num, Model model) {
		model.addAttribute("product", productService.getProduct(num));
		return "product/product_room1";
	}
	
	
//	@RequestMapping(value = "/product_room2", method = RequestMethod.GET)
//	public String productRoom2() {
//		return "product/product_room2";
//	}
//	
//	
//	@RequestMapping(value = "/product_room3", method = RequestMethod.GET)
//	public String productRoom3() {
//		return "product/product_room3";
//	}
//	
//	
//	@RequestMapping(value = "/product_room4", method = RequestMethod.GET)
//	public String productRoom4() {
//		return "product/product_room4";
//	}
//	
}
