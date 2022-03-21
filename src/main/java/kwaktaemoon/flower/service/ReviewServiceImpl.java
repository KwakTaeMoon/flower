package kwaktaemoon.flower.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kwaktaemoon.flower.dao.ReviewDao;
import kwaktaemoon.flower.domain.Review;

@Service
public class ReviewServiceImpl implements ReviewService {
	@Autowired private ReviewDao reviewDao;
	
	@Override
	public List<Review> getReviews(String userId) {
		return reviewDao.selectReviews(userId);
	}
	
	@Override
	public List<Review> getdetailReviews(int reviewNum) {
		return reviewDao.detailReviews(reviewNum);
	}
	
	@Override
	public List<Review> getAdminReviews() {
		return reviewDao.selectAdminReviews();
	}
	
	@Override
	public void addReview(Review review) {
		reviewDao.insertReview(review);
	}
	
	@Override
	public void fixReview(int reviewNum) {
		reviewDao.updateReview(reviewNum);
	}
	
	@Override
	public void delReview(int reviewNum) {
		reviewDao.deleteReview(reviewNum);
	}
}
