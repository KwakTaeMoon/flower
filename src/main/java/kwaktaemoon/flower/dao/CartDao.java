package kwaktaemoon.flower.dao;

import java.util.List;

import kwaktaemoon.flower.domain.Cart;

public interface CartDao {
	List<Cart> selectCarts(String userId);
	int insertCart(Cart cart);
	int deleteCart(int cartNum);
}
