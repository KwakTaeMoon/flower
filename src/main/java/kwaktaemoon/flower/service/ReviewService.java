package kwaktaemoon.flower.service;

import java.util.List;

import kwaktaemoon.flower.domain.Review;

public interface ReviewService {
	List<Review> getReviews(String userId);
	List<Review> getdetailReviews(int reviewNum);
	List<Review> getAdminReviews();
	void addReview(Review review);
	void fixReview(int reviewNum);
	void delReview(int reviewNum);
}
