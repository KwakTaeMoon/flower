package kwaktaemoon.flower.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kwaktaemoon.flower.dao.map.FlowerMap;
import kwaktaemoon.flower.domain.Flower;

@Repository
public class FlowerDaoImpl implements FlowerDao{
	@Autowired private FlowerMap flowerMap;
	
	@Override
	public List<Flower> selectFlowers() {
		return flowerMap.selectFlowers();
	}
	
	
	@Override
	public List<Flower> detailFlowers(String flowerName) {
		return flowerMap.detailFlowers(flowerName);
	}
	
	@Override
	public List<Flower> searchFlowerWithKeyword(String keyword) {
		return flowerMap.searchFlowerWithKeyword(keyword);
	}
	
	@Override
	public List<Flower> selectAdminFlowers() {
		return flowerMap.selectAdminFlowers();
	}
	
	@Override
	public Flower searchFlower(String flowerName) {
		return flowerMap.searchFlower(flowerName);
	}
	
	@Override
	public void insertFlower(Flower flower) {
		flowerMap.insertFlower(flower);
	}
	
	@Override
	public void updateFlower(Flower flower) {
		flowerMap.updateFlower(flower);
	}
	
	@Override
	public void deleteFlower(int flowerNum) {
		flowerMap.deleteFlower(flowerNum);
	}
}
