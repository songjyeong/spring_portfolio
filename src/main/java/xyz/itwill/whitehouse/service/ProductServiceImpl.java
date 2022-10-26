package xyz.itwill.whitehouse.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.RequiredArgsConstructor;
import xyz.itwill.whitehouse.dao.ProductDAO;
import xyz.itwill.whitehouse.dto.Product;

@Service
@RequiredArgsConstructor
public class ProductServiceImpl implements ProductService {
	private final ProductDAO productDAO;
	
	@Transactional
	@Override
	public void addProduct(Product product) {
		productDAO.insertProduct(product);
	}

	@Transactional
	@Override
	public void modifyProduct(Product product) {
		productDAO.updateProduct(product);
	}

	@Transactional
	@Override
	public void removeProduct(int pNum) {
		productDAO.deleteProduct(pNum);
	}

	public int getProductCount() {
		return productDAO.selectProductCount();
	}

	@Override
	public Product getProduct(int pNum) {
		return productDAO.selectProduct(pNum);
	}

	@Override
	public List<Product> getProductList() {
		return productDAO.selectProductList();
	}
	
}
