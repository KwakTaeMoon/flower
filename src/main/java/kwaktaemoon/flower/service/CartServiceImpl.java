package kwaktaemoon.flower.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kwaktaemoon.flower.dao.CartDao;
import kwaktaemoon.flower.domain.Cart;

@Service
public class CartServiceImpl implements CartService {
	@Autowired private CartDao cartDao;
	
	@Override
	public List<Cart> getCarts(String userId) {
		return cartDao.selectCarts(userId);
	}

	@Override
	public List<Cart> getCart(int flowerNum, String userId) {
		return cartDao.selectCart(flowerNum, userId);
	}
	
	@Override
	public int addCart(Cart cart) {
		return cartDao.insertCart(cart);
	}

	@Override
	public int delCart(int cartNum) {
		return cartDao.deleteCart(cartNum);
	}
	
	@Override
	public int emptyCart(String userId) {
		return cartDao.emptyCart(userId);
	}
}
