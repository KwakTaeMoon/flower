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
	public List<Flower> getFlowers(){
		return flowerDao.selectFlowers();
	}
	@Override
	public List<Flower> searchFlowerWithKeyword(String keyword){
		return flowerDao.searchFlowerWithKeyword(keyword);
	}
	@Override
	public Flower findFlower(String flowerName) {
		return flowerDao.searchFlower(flowerName);
	}
	@Override
	public int addFlowerAdmin(Flower flower) {
		return flowerDao.insertFlowerAdmin(flower);
	}
	@Override
	public int fixFlowerAdmin(Flower flower) {
		return flowerDao.updateFlowerAdmin(flower);
	}
	@Override
	public int delFlowerAdmin(Flower flower) {
		return flowerDao.deleteFlowerAdmin(flower);
	}
}