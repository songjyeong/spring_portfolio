package xyz.itwill.whitehouse.mapper;

import java.util.List;
import java.util.Map;

import xyz.itwill.whitehouse.dto.Review;

public interface ReviewMapper {
	int insertReview(Review review);  // 게시글 작성
	int updateReview(Review review);  // 게시글 수정
	int updateCountReview(int vNum);  // 게시글 조회수
	int deleteReview(int vNum); 	  // 게시글 삭제
	int selectReviewCount();		  // 게시글 갯수 확인
	int selectReviewSearchCount(String vTitle); // 검색 게시글 갯수 확인
	Review selectReview(int vNum);	  // 게시글 조회
	List<Review> selectReviewList(Map<String, Object> map);  // 게시글 리스트
	List<Review> selectSearchReviewList(Map<String, Object> map);  // 게시글 검색 리스트
}
