package kwaktaemoon.flower.domain;

import java.time.LocalDate;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class Flower {
	private int flowerNum;
	private String flowerName;
	private int price;
	private String kind;
	private int amount;
	private String flowerCategory;
	private String flowerImgfileName;
	private MultipartFile flowerImgfile;
	private String detail;
	private LocalDate regDate;
	private String keyworkd;
}
