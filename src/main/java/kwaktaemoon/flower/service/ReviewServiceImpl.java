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
	public List<Review> getReviews() {
		return reviewDao.selectReviews();
	}
	
	@Override
	public List<Review> getDetailReviews(int reviewNum) {
		return reviewDao.detailReviews(reviewNum);
	}
	
	@Override
	public List<Review> getAdminReviews() {
		return reviewDao.selectAdminReviews();
	}
	
	@Override
	public List<Review> getDetailAdminReviews(int reviewNum) {
		return reviewDao.detailAdminReviews(reviewNum);
	}
	
	@Override
	public void addReview(Review review) {
		reviewDao.insertReview(review);
	}
	
	@Override
	public void fixReview(Review review) {
		reviewDao.updateReview(review);
	}
	
	@Override
	public void delReview(int reviewNum) {
		reviewDao.deleteReview(reviewNum);
	}
	
	@Override
	public void delAdminReview(int reviewNum) {
		reviewDao.deleteAdminReview(reviewNum);
	}
}
 