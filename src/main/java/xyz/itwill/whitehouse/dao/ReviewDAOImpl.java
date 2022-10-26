package xyz.itwill.whitehouse.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import xyz.itwill.whitehouse.dto.Review;
import xyz.itwill.whitehouse.mapper.ReviewMapper;

@Repository
@RequiredArgsConstructor
public class ReviewDAOImpl implements ReviewDAO{
	private final SqlSession sqlSession;
	
	@Override
	public int insertReview(Review review) {
		return sqlSession.getMapper(ReviewMapper.class).insertReview(review);
	}
	
	@Override
	public int updateReview(Review review) {
		return sqlSession.getMapper(ReviewMapper.class).updateReview(review);
	}
	
	@Override
	public int updateCountReview(int vNum) {
		return sqlSession.getMapper(ReviewMapper.class).updateCountReview(vNum);
	}
	
	@Override
	public int deleteReview(int vNum) {
		return sqlSession.getMapper(ReviewMapper.class).deleteReview(vNum);
	}
	
	@Override
	public int selectReviewCount() {
		return sqlSession.getMapper(ReviewMapper.class).selectReviewCount();
	}
	
	@Override
	public int selectReviewSearchCount(String vTitle) {
		return sqlSession.getMapper(ReviewMapper.class).selectReviewSearchCount(vTitle);
	}
	
	@Override
	public Review selectReview(int vNum) {
		return sqlSession.getMapper(ReviewMapper.class).selectReview(vNum);
	}
	
	@Override
	public List<Review> selectReviewList(Map<String, Object> map) {
		return sqlSession.getMapper(ReviewMapper.class).selectReviewList(map);
	}
	
	@Override
	public List<Review> selectSearchReviewList(Map<String, Object> map) {
		return sqlSession.getMapper(ReviewMapper.class).selectSearchReviewList(map);
	}
}
