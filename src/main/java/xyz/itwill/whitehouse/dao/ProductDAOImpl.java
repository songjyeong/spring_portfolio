package xyz.itwill.whitehouse.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import xyz.itwill.whitehouse.dto.Product;
import xyz.itwill.whitehouse.mapper.ProductMapper;


@Repository
@RequiredArgsConstructor
public class ProductDAOImpl implements ProductDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public int insertProduct(Product product) {
		return sqlSession.getMapper(ProductMapper.class).insertProduct(product);
	}

	@Override
	public int updateProduct(Product product) {
		return sqlSession.getMapper(ProductMapper.class).updateProduct(product);
	}

	@Override
	public int deleteProduct(int pNum) {
		return sqlSession.getMapper(ProductMapper.class).deleteProduct(pNum);
	}

	@Override
	public int selectProductCount() {
		return sqlSession.getMapper(ProductMapper.class).selectProductCount();
	}

	@Override
	public Product selectProduct(int pNum) {
		return sqlSession.getMapper(ProductMapper.class).selectProduct(pNum);
	}

	@Override
	public List<Product> selectProductList() {
		return sqlSession.getMapper(ProductMapper.class).selectProductList();
	}

}
