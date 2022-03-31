package kwaktaemoon.flower.dao;

import java.util.List;

import kwaktaemoon.flower.domain.Cart;

public interface CartDao {
	List<Cart> selectCarts(String userId);
	List<Cart> selectCart(int flowerNum, String userId);
	int insertCart(Cart cart);
	int deleteCart(int cartNum);
	int emptyCart(String userId);
}
