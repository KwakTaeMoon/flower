package kwaktaemoon.flower.dao.map;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kwaktaemoon.flower.domain.Flower;

public interface FlowerMap {
	List<Flower> selectFlowers();
	List<Flower> detailFlowers(@Param("flowerName") String flowerName);
	List<Flower> searchFlowerWithKeyword(@Param("keyword") String keyword);
	List<Flower> selectAdminFlowers();
	Flower searchFlower(String flowerName);
	void insertFlower(Flower flower);
	void updateFlower(@Param("flowerNum") int flowerNum, @Param("flowerName") String flowerName,
						@Param("price") int price, @Param("kind") String kind, @Param("flowerCategory") String flowerCategory);
	void deleteFlower(int flowerNum);
}
