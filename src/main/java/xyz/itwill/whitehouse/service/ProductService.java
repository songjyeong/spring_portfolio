package xyz.itwill.whitehouse.service;

import java.util.List;

import xyz.itwill.whitehouse.dto.Product;

public interface ProductService {
	void addProduct(Product product);
	void modifyProduct(Product product);
	void removeProduct(int pNum);
	int getProductCount();
	Product getProduct(int pNum);
	List<Product> getProductList();
}
