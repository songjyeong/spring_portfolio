package xyz.itwill.whitehouse.mapper;

import java.util.List;

import xyz.itwill.whitehouse.dto.Product;


public interface ProductMapper {
	int insertProduct(Product product);
	int updateProduct(Product product);
	int deleteProduct(int pNum);
	int selectProductCount();
	Product selectProduct(int pNum);
	List<Product> selectProductList();
}
