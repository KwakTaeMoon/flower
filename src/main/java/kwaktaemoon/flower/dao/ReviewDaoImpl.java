package kwaktaemoon.flower.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kwaktaemoon.flower.dao.map.ReviewMap;
import kwaktaemoon.flower.domain.Review;

@Repository
public class ReviewDaoImpl implements ReviewDao{
	@Autowired private ReviewMap reviewMap;
	
	@Override
	public List<Review> selectReviews() {
		return reviewMap.selectReviews();
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
	public List<Review> detailAdminReviews(int reviewNum) {
		return reviewMap.detailAdminReviews(reviewNum);
	}
	
	@Override
	public void insertReview(Review review) {
		reviewMap.insertReview(review);
	}
	
	@Override
	public void updateReview(Review review) {
		reviewMap.updateReview(review);
	}
	
	@Override
	public void deleteReview(int reviewNum) {
		reviewMap.deleteReview(reviewNum);
	}
	
	@Override
	public void deleteAdminReview(int reviewNum) {
		reviewMap.deleteAdminReview(reviewNum);
	}
}
 