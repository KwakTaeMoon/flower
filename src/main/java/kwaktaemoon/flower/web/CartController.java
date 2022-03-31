package kwaktaemoon.flower.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kwaktaemoon.flower.domain.Cart;
import kwaktaemoon.flower.domain.Flower;
import kwaktaemoon.flower.service.CartService;
import kwaktaemoon.flower.service.FlowerService;

@Controller("kwaktaemoon.flower.cart")
@RequestMapping("/cart")
public class CartController {
	@Autowired private CartService cartService;
	
	@RequestMapping(value = "/listCart", method=RequestMethod.GET)
	public String listCart(Model model, @RequestParam("userId") String userId, HttpSession session) {
	    List<Cart> cartList = cartService.getCarts(userId);
	    model.addAttribute("cartList", cartList);
		return "cart/listCart";
	}
	
	@ResponseBody
	@PostMapping("/list")
	public List<Cart> getCarts(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		String userId = (String) session.getAttribute("userId");
		List<Cart> result = cartService.getCarts(userId);
		return result;
	}
	
	@ResponseBody
	@DeleteMapping("/del/{cartNum}")
	public int delCart(@PathVariable int cartNum) {
		return cartService.delCart(cartNum);
	}
	
	@ResponseBody
	@DeleteMapping("/empty")
	public int emptyCart(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String userId = (String) session.getAttribute("userId");
		return cartService.emptyCart(userId);
	}
}
