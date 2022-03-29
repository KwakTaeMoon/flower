package kwaktaemoon.flower.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kwaktaemoon.flower.domain.Flower;
import kwaktaemoon.flower.service.FlowerService;



@Controller
@RequestMapping("/flower")
public class FlowerController {
	@Autowired private FlowerService flowerService;

	@Value("${attachPath}") private String attachPath;
	
	@RequestMapping("/listFlower")
	public List<Flower> listFlower() {
		return flowerService.getFlowers();
	}
	
	@RequestMapping(value = "/detailFlower", method=RequestMethod.GET)
	public String detailFlower(Model model, @RequestParam("flowerNum") int flowerNum, HttpSession session) {
	    List<Flower> flowerList = flowerService.getDetailFlowers(flowerNum);
	    model.addAttribute("flowerList", flowerList);
		return "flower/detailFlower";
	}

	@ResponseBody
	@RequestMapping(value="/fix")
	public void fixAmount(@RequestBody Flower flower, HttpServletRequest request, HttpServletResponse response) {
		flowerService.fixAmount(flower);
	}
	
}
