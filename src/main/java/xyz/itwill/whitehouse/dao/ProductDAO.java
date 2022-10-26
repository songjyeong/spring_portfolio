package xyz.itwill.whitehouse.dao;

import java.util.List;

import xyz.itwill.whitehouse.dto.Product;

public interface ProductDAO {
	int insertProduct(Product product);
	int updateProduct(Product product);
	int deleteProduct(int pNum);
	int selectProductCount();
	Product selectProduct(int pNum);
	List<Product> selectProductList();
	
	/*
	//상품 번호
	public Product viewProduct(String pNum);
	
	//상품 등록
	public void insertProduct(Product product);
		
	//상품 수정
	public void updateProduct(Product product);
		
	//상품 삭제
	public void deleteProduct(Product product);
	
	//전체 상품 리스트
	public List<Product> getAllProductList();
		
	//메인 카테고리에 맞는 서브 카테고리 출력
	public List<String> viewSubCategory(String mainCategory); 
	
	//서브 카테고리 클릭시 서브카테고리에 맞는 상품 리스트 출력 + 페이징 처리 추가
	List<Product> productPageProcessingList(int page, int pageLimit, String subCategory);
	
	//상품 전체 개수
	int getAllProductCount();
	*/
	
}