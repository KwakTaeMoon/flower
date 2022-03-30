package kwaktaemoon.flower.domain;

import lombok.Data;

@Data
public class Cart {
	private int cartNum;
	private String userId;
	private int flowerNum;
	private int amount;
}
