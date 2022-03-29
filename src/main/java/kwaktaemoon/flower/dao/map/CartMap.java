package kwaktaemoon.flower.dao.map;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kwaktaemoon.flower.domain.Cart;

public interface CartMap {
	List<Cart> selectCarts(String userId);
	int insertCart(Cart cart);
	int deleteCart(int cartNum);
}
