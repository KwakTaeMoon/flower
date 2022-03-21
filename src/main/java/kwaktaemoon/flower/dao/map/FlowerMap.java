package kwaktaemoon.flower.dao.map;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kwaktaemoon.flower.domain.Flower;

public interface FlowerMap {
	List<Flower> selectFlowers();
	List<Flower> searchFlowerWithKeyword(@Param("keyword") String keyword);
	Flower searchFlower(String flowerName);
	int insertFlower(Flower flower);
	int updateFlowerAdmin(Flower flower);
	int deleteFlowerAdmin(Flower flower);
}
