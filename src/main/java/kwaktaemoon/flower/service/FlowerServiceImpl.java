package kwaktaemoon.flower.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kwaktaemoon.flower.dao.FlowerDao;
import kwaktaemoon.flower.domain.Flower;



@Service
public class FlowerServiceImpl implements FlowerService{
	@Autowired private FlowerDao flowerDao;
	
	@Override
	public List<Flower> getFlowers() {
		return flowerDao.selectFlowers();
	}
	
	@Override
	public List<Flower> getDetailFlowers(int flowerNum) {
		return flowerDao.detailFlowers(flowerNum);
	}
	
	@Override
	public List<Flower> searchFlowerWithKeyword(String keyword) {
		return flowerDao.searchFlowerWithKeyword(keyword);
	}
	
	@Override
	public Flower findFlower(String flowerName) {
		return flowerDao.searchFlower(flowerName);
	}
	
	@Override
	public List<Flower> getAdminFlowers() {
		return flowerDao.selectAdminFlowers();
	}
	
	@Override
	public void addFlower(Flower flower) {
		flowerDao.insertFlower(flower);
	}
	
	@Override
	public void fixFlower(Flower flower) {
		flowerDao.updateFlower(flower);
	}
	
	@Override
	public void fixAmount(Flower flower) {
		flowerDao.updateAmount(flower);
	}
	
	@Override
	public void delFlower(int flowerNum) {
		flowerDao.deleteFlower(flowerNum);
	}
}