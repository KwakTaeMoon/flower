package kwaktaemoon.flower.dao;

import java.util.List;

import kwaktaemoon.flower.domain.Review;

public interface ReviewDao {
	List<Review> selectReviews(String userId);
	List<Review> detailReviews(int reviewNum);
	List<Review> selectAdminReviews();
	void insertReview(Review review);
	void updateReview(int reviewNum);
	void deleteReview(int reviewNum);
}
