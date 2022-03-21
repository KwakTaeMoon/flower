package kwaktaemoon.flower.web.admin;

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
@RequestMapping("/admin/order")
public class AdminOrderController{
	@Autowired private OrderService orderService;	

	@RequestMapping("/adminListOrder")
	public String adminListOrder() {
		return "admin/order/adminListOrder";
	}
	
	@ResponseBody
	@PostMapping("/adminListOrder")
	public List<Order> getAdminOrders() {
		return orderService.getAdminOrders();
	}
	
	@ResponseBody
	@PutMapping("adminFix/{orderNum}")
	public void fixAdmDeliState(@PathVariable int orderNum) {
		orderService.fixAdmDeliState(orderNum);
	}
	
	@ResponseBody	
	@DeleteMapping("adminDel/{orderNum}")
	public void delOrder(@PathVariable int orderNum) {
		orderService.delOrder(orderNum);
	}
}
