package kwaktaemoon.flower.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
	public String detailFlower(Model model, @RequestParam("flowerNum") int flowerNum) {
	    List<Flower> flowerList = flowerService.getDetailFlowers(flowerNum);
	    model.addAttribute("flowerList", flowerList);
		return "flower/detailFlower";
	}

}
