package kwaktaemoon.flower.web;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kwaktaemoon.flower.domain.Flower;
import kwaktaemoon.flower.service.FlowerService;

@Controller
@RequestMapping("/admin/flower")
public class FlowerAdminController {
	@Autowired private FlowerService flowerService;
	
	@Value("${attachPath}") private String attachPath;
	
	@RequestMapping("/listFlower")
	public String listFlower() {
		return "admin/flower/listFlower";
	}
	
	@RequestMapping(value = "/detailFlower", method=RequestMethod.GET)
	public String detailFlower(Model model, @RequestParam("flowerNum") int flowerNum, HttpSession session) {
	    List<Flower> flowerList = flowerService.getDetailFlowers(flowerNum);
	    model.addAttribute("flowerList", flowerList);
		return "admin/flower/detailFlower";
	}
	
	@RequestMapping("/addFlower")
	public String addFlower() {
		return "admin/flower/addFlower";
	}
	
	@RequestMapping("/fixFlower")
	public String fixFlower() {
		return "admin/flower/fixFlower";
	}
	
	@ResponseBody
	@PostMapping("/listFlower")
	public List<Flower> getAdminFlowers() {
		return flowerService.getAdminFlowers();
	}
	
	@ResponseBody	
	@DeleteMapping("del/{flowerNum}")
	public void delFlower(@PathVariable int flowerNum) {
		flowerService.delFlower(flowerNum);
	}
	
	@ResponseBody
	@PostMapping("/addFlower")
	public ModelAndView addFlower(Flower flower, ModelAndView mv) {
		try {
		String flowerFileName = flower.getFlowerImgfile().getOriginalFilename();
		String detailFileName = flower.getDetailImgfile().getOriginalFilename();
		
		saveFlowerFile(attachPath + "/" + flowerFileName, flower.getFlowerImgfile());
		flower.setFlowerImgfileName(flowerFileName);
		
		saveDetailFile(attachPath + "/" + detailFileName, flower.getDetailImgfile());
		flower.setDetailImgfileName(detailFileName);
		flowerService.addFlower(flower);
		} catch(NullPointerException e) {}
		return mv;
	}
	
	@ResponseBody
	@PostMapping("/fix")
	public void fixFlower(@RequestBody Flower flower, HttpServletRequest request, HttpServletResponse response) {
		flowerService.fixFlower(flower);
	}

	private void saveFlowerFile(String flowerFileName, MultipartFile flowerFile) {
		try {
			flowerFile.transferTo(new File(flowerFileName));
		} catch(IOException e) {}
	}
	
	private void saveDetailFile(String flowerFileName, MultipartFile detailFile) { 
		try {
			detailFile.transferTo(new File(flowerFileName));
		} catch(IOException e) {}
	}
}
