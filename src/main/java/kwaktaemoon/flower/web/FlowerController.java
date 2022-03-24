package kwaktaemoon.flower.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
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
	
	@RequestMapping("/detailFlower")
	public String detailFlowers() {
		flowerService.getFlowers();
		return "flower/detailFlower";
	}
}
