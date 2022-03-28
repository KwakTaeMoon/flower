package kwaktaemoon.flower.dao;

import java.util.List;

import kwaktaemoon.flower.domain.Flower;

public interface FlowerDao {
	List<Flower> selectFlowers();
	List<Flower> detailFlowers(int flowerNum);
	List<Flower> searchFlowerWithKeyword(String keyword);
	List<Flower> selectAdminFlowers();
	Flower searchFlower(String flowerName);
	void insertFlower(Flower flower);
	void updateFlower(int flowerNum, String flowerName, int price, String kind, String flowerCategory);
	void deleteFlower(int flowerNum);
}



