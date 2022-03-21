package kwaktaemoon.flower.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kwaktaemoon.flower.domain.Flower;
import kwaktaemoon.flower.service.FlowerService;



@Controller("kwaktaemoon.flower.web.flower")
@RequestMapping("flower")
public class FlowerController {
	@Autowired private FlowerService flowerService;
	
	@GetMapping("/flowerList")
	public ModelAndView flowerListAddr
	}

	@ResponseBody
	@GetMapping("/list")
	public List<Flower> getFlowers(){
	return flowerService.getFlowers();
	}
	
	@ResponseBody
	@GetMapping("/")
	public List<Flower> searchFlowerWithKeyword(String keyword){
		
	}
	
	@ResponseBody
	@GetMapping("/flowerDetail/find")
	public Flower findFlower(HttpServletRequest request) {
		HttpSession session = request.getSession();
		int flowerNum = Integer.parseInt(String.valueOf(session.getAttribute("flowerNum")));
		return flowerService.findFlower(flowerNum);
	}
	
	int addFlowerAdmin(Flower flower) {
		
	}
	
	int fixFlowerAdmin(Flower flower) {
	
	}
	
	int delFlowerAdmin(Flower flower) {
		
	}
}
