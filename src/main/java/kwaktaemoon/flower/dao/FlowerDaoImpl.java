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
	public List<Flower> selectFlowers(){
		return flowerMap.selectFlowers();
	}
	@Override
	public List<Flower> searchFlowerWithKeyword(String keyword){
		return flowerMap.searchFlowerWithKeyword(keyword);
	}
	@Override
	public Flower searchFlower(String flowerName) {
		return flowerMap.searchFlower(flowerName);
	}
	@Override
	public int insertFlower(Flower flower) {
		return flowerMap.insertFlower(flower);
	}
	@Override
	public int updateFlowerAdmin(Flower flower) {
		return flowerMap.updateFlowerAdmin(flower);
	}
	@Override
	public int deleteFlowerAdmin(Flower flower) {
		return flowerMap.deleteFlowerAdmin(flower);
	}
}
