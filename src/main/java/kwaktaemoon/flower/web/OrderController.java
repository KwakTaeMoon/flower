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
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kwaktaemoon.flower.domain.Order;
import kwaktaemoon.flower.service.OrderService;

@Controller
@RequestMapping("/order")
public class OrderController{
	@Autowired private OrderService orderService;	
	
	@RequestMapping("/listOrder")
	public String listOrder() {
		return "order/listOrder";
	}
	
	@RequestMapping(value = "/detailOrder", method=RequestMethod.GET)
	public String detailOrder(Model model, @RequestParam("orderNum") int orderNum) {
	    List<Order> orderList = orderService.getdetailOrders(orderNum);
	    model.addAttribute("orderList", orderList);
		return "order/detailOrder";
	}
	
	@RequestMapping("/addOrder")
	public String addOrder() {
		return "order/addOrder";
	}

	
	@RequestMapping("/successOrder")
	public String successOrder() {
		return "order/successOrder";
	}
	
	@ResponseBody
	@PostMapping("/listOrder")
	public List<Order> getOrders(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String userId = (String) session.getAttribute("userId");
		List<Order> result = orderService.getOrders(userId);
		return result;
	}
	
	@ResponseBody
	@PutMapping("fix/{orderNum}")
	public void fixDeliState(@PathVariable int orderNum) {
		orderService.fixDeliState(orderNum);
	}
	
	@ResponseBody
	@PostMapping("/addOrder")
	public void addOrder(Order order, HttpServletRequest httpRequest) {
		HttpSession session = httpRequest.getSession();
		String userId = (String) session.getAttribute("userId");
		order.setUserId(userId);
		orderService.addOrder(order);
	}
}
