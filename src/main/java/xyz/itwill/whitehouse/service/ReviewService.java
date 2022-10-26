package xyz.itwill.whitehouse.service;

import java.util.List;
import java.util.Map;

import xyz.itwill.whitehouse.dto.Review;

public interface ReviewService {
	void addReview(Review review);
	void modifyReview(Review review);
	void modifyReviewCount(int vNum);
	void removeReview(int vNum);
	int getReviewCount();
	int getReviewSearchCount(String vTitle);
	Review getReview(int vNum);
	List<Review> getReviewList(Map<String, Object> map);
	List<Review> getReviewSearchList(Map<String, Object> map);
	
}
