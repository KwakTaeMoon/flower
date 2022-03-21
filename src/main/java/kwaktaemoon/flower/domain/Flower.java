package kwaktaemoon.flower.domain;

import java.time.LocalDate;


import lombok.Data;

@Data 
public class Flower {
	private int flowerNum;
	private String flowerName;
	private int price;
	private int amount;
	private String kind;
	private String flowerCategory;
	private String flowerSize;
	private String flowerImgfileName;
	private String detailImgFileName;
	private LocalDate regDate;
	private String keyword;
}
