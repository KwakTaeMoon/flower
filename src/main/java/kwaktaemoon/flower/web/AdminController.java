package kwaktaemoon.flower.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kwaktaemoon.flower.service.NoticeService;
import kwaktaemoon.flower.service.OrderService;
import kwaktaemoon.flower.service.ReviewService;

@Controller
public class AdminController {
	@Autowired private OrderService orderService;
	@Autowired private NoticeService noticeService;
	@Autowired private ReviewService reviewService;
	
	@RequestMapping("admin/")
	public String readyOrders(Model model) {
		model.addAttribute("readyOrders", orderService.getAdminReadyOrders());
		//model.addAttribute("CancelOrders", orderService.getAdminCancelOrders());
		//model.addAttribute("Notice", noticeService.);
		//model.addAttribute("Review", reviewService.);
		return "admin/main";
	}
}
