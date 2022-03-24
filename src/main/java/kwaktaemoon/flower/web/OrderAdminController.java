package kwaktaemoon.flower.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kwaktaemoon.flower.domain.Order;
import kwaktaemoon.flower.service.OrderService;

@Controller
@RequestMapping("/admin/order")
public class OrderAdminController{
	@Autowired private OrderService orderService;	

	@RequestMapping("/listOrder")
	public String adminListOrder() {
		return "admin/order/listOrder";
	}
	
	@ResponseBody
	@PostMapping("/listOrder")
	public List<Order> getAdminOrders() {
		return orderService.getAdminOrders();
	}
	
	@ResponseBody
	@PutMapping("fix/{orderNum}")
	public void fixAdmDeliState(@PathVariable int orderNum) {
		orderService.fixAdmDeliState(orderNum);
	}
	
	@ResponseBody	
	@DeleteMapping("del/{orderNum}")
	public void delOrder(@PathVariable int orderNum) {
		orderService.delOrder(orderNum);
	}
}
