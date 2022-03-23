package kwaktaemoon.flower.dao;

import java.util.List;

import kwaktaemoon.flower.domain.Flower;

public interface FlowerDao {
	List<Flower> selectFlowers();
	List<Flower> detailFlowers(String flowerName);
	List<Flower> searchFlowerWithKeyword(String keyword);
	List<Flower> selectAdminFlowers();
	Flower searchFlower(String flowerName);
	void insertFlower(Flower flower);
	void updateFlower(Flower flower);
	void deleteFlower(int flowerNum);
}



