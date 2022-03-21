package kwaktaemoon.flower.domain;

import java.time.LocalDate;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

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
	@DateTimeFormat(pattern="yyyy-MM-dd")
	@JsonFormat(pattern="yyyy-MM-dd", timezone="Asia/Seoul")
	private LocalDate regDate;
}
