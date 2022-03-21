package kwaktaemoon.flower.service;

import java.util.List;

import kwaktaemoon.flower.domain.Flower;


public interface FlowerService {
	List<Flower> getFlowers();
	List<Flower> searchFlowerWithKeyword(String keyword);
	Flower findFlower(String flowerName);
	int addFlowerAdmin(Flower flower);
	int fixFlowerAdmin(Flower flower);
	int delFlowerAdmin(Flower flower);
}
