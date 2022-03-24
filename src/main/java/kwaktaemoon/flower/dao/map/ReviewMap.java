package kwaktaemoon.flower.dao.map;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kwaktaemoon.flower.domain.Review;

public interface ReviewMap {
	List<Review> selectReviews(@Param("userId") String userId);
	List<Review> detailReviews(@Param("title") String title);
	List<Review> selectAdminReviews();
	void insertReview(Review review);
	void updateReview(int reviewNum);
	void deleteReview(int reviewNum);
}
