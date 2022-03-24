package kwaktaemoon.flower.service;

import java.util.List;

import kwaktaemoon.flower.domain.Review;

public interface ReviewService {
	List<Review> getReviews();
	List<Review> getdetailReviews(String title);
	List<Review> getAdminReviews();
	void addReview(Review review);
	void fixReview(int reviewNum);
	void delReview(int reviewNum);
}
 