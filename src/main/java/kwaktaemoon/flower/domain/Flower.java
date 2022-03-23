package kwaktaemoon.flower.domain;

import java.time.LocalDate;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@NoArgsConstructor
@AllArgsConstructor 
@Data 
public class Flower {
	private int flowerNum;
	private String flowerName;
	private int price;
	private String kind;
	private String flowerCategory;
	private String flowerImgfileName;
	private MultipartFile flowerImgfile;
	private String detailImgfileName;
	private MultipartFile detailImgfile;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	@JsonFormat(pattern="yyyy-MM-dd", timezone="Asia/Seoul")
	private LocalDate regDate;
}
