package kwaktaemoon.flower.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kwaktaemoon.flower.domain.Flower;



public interface FlowerDao {
	List<Flower> selectFlowers();
	List<Flower> searchFlowerWithKeyword(String keyword);
	Flower searchFlower(String flowerName);
	int insertFlower(Flower flower);
	int updateFlowerAdmin(Flower flower);
	int deleteFlowerAdmin(Flower flower);
}



