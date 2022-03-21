package kwaktaemoon.flower.dao;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kwaktaemoon.flower.dao.map.ReviewMap;
import kwaktaemoon.flower.domain.Review;

@Repository
public class ReviewDaoImpl implements ReviewDao{
	@Autowired private ReviewMap reviewMap;
	
	@Override
	public List<Review> selectReviews(String userId) {
		return reviewMap.selectReviews(userId);
	}
	
	@Override
	public List<Review> detailReviews(int reviewNum) {
		return reviewMap.detailReviews(reviewNum);
	}
	
	@Override
	public List<Review> selectAdminReviews() {
		return reviewMap.selectAdminReviews();
	}
	
	@Override
	public void insertReview(Review review) {
		reviewMap.insertReview(review);
	}
	
	@Override
	public void updateReview(int reviewNum) {
		reviewMap.updateReview(reviewNum);
	}
	
	@Override
	public void deleteReview(int reviewNum) {
		reviewMap.deleteReview(reviewNum);
	}
}
