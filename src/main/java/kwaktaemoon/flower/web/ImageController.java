package kwaktaemoon.flower.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kwaktaemoon.flower.service.FlowerService;

@Controller
public class ImageController {
	@Autowired private FlowerService flowerService;
	
	@Value("${attachPath}") private String attachPath;
	
	@RequestMapping("/")
	public String listFlower(Model model) {
		model.addAttribute("flowerList", flowerService.getFlowers());
		return "main";
	}
}
