package xyz.itwill.whitehouse.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.RequiredArgsConstructor;
import xyz.itwill.whitehouse.dao.ReviewDAO;
import xyz.itwill.whitehouse.dto.Review;

@Service
@RequiredArgsConstructor
public class ReviewServiceImpl implements ReviewService{
	private final ReviewDAO reviewDAO;
	
	@Transactional
	@Override
	public void addReview(Review review) {
		reviewDAO.insertReview(review);		
	}
	@Transactional
	@Override
	public void modifyReview(Review review) {
		reviewDAO.updateReview(review);
	}
	
	@Transactional
	@Override
	public void modifyReviewCount(int vNum) {
		reviewDAO.updateCountReview(vNum);
	}
	
	@Transactional
	@Override
	public void removeReview(int vNum) {
		reviewDAO.deleteReview(vNum);
	}

	@Override
	public int getReviewCount() {
		return reviewDAO.selectReviewCount();
	}
	
	@Override
	public int getReviewSearchCount(String vTitle) {
		return reviewDAO.selectReviewSearchCount(vTitle);
	}

	@Override
	public Review getReview(int vNum) {
		return reviewDAO.selectReview(vNum);
	}

	@Override
	public List<Review> getReviewList(Map<String, Object> map) {
		return reviewDAO.selectReviewList(map);
	}
	
	@Override
	public List<Review> getReviewSearchList(Map<String, Object> map) {
		return reviewDAO.selectSearchReviewList(map);
	}
}
