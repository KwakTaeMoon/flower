package kwaktaemoon.flower.dao.map;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kwaktaemoon.flower.domain.Flower;

public interface FlowerMap {
	List<Flower> selectFlowers();
	List<Flower> detailFlowers(@Param("flowerNum") int flowerNum);
	List<Flower> searchFlowerWithKeyword(@Param("keyword") String keyword);
	List<Flower> selectAdminFlowers();
	Flower searchFlower(String flowerName);
	void insertFlower(Flower flower);
	void updateFlower(Flower flower);
	void updateAmount(Flower flower);
	void deleteFlower(int flowerNum);
}
