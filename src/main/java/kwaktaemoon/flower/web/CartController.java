package kwaktaemoon.flower.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kwaktaemoon.flower.domain.Cart;
import kwaktaemoon.flower.service.CartService;

@Controller("kwaktaemoon.flower.cart")
@RequestMapping("/cart")
public class CartController {
	@Autowired private CartService cartService;
	
	@RequestMapping("/listCart")
	public String listFlowerAddr(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String userId = (String) session.getAttribute("userId");
		if(userId == null) {
			return "user/login";
		}
		return "cart/listCart";
	}
	
	@RequestMapping("/list")
	public String listAddr() {
		return "cart/list";
	}
	
	@ResponseBody
	@PostMapping("/list")
	public List<Cart> getCarts(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String userId = (String) session.getAttribute("userId");
		return cartService.getCarts(userId);
	}
	
	@ResponseBody
	@PostMapping("/add")
	public int addCart(@RequestBody Cart cart, HttpServletRequest request) {
		HttpSession session = request.getSession();
		String userId = (String) session.getAttribute("userId");
		cart.setUserId(userId);
		int flowerNum = Integer.parseInt(String.valueOf(session.getAttribute("flowerNum")));
		cart.setFlowerNum(flowerNum);
		return cartService.addCart(cart);
	}
	
	@ResponseBody
	@PostMapping("/del/{cartNum}")
	public int delCart(@PathVariable int cartNum) {
		return cartService.delCart(cartNum);
	}
}
