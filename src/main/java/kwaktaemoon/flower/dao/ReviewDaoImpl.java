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
	public List<Review> detailReviews(String title) {
		return reviewMap.detailReviews(title);
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
 