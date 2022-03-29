package kwaktaemoon.flower.service;

import java.util.List;

import kwaktaemoon.flower.domain.Flower;


public interface FlowerService {
	List<Flower> getFlowers();
	List<Flower> getDetailFlowers(int flowerNum);
	List<Flower> searchFlowerWithKeyword(String keyword);
	Flower findFlower(String flowerName);
	List<Flower> getAdminFlowers();
	void addFlower(Flower flower);
	void fixFlower(Flower flower);
	void delFlower(int flowerNum);
}
