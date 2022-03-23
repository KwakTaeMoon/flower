package kwaktaemoon.flower.web.admin;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kwaktaemoon.flower.domain.Flower;
import kwaktaemoon.flower.domain.Review;
import kwaktaemoon.flower.service.FlowerService;

@Controller
@RequestMapping("/admin/flower")
public class AdminFlowerController {
	@Autowired private FlowerService flowerService;
	
	@Value("${attachPath}") private String attachPath;
	
	@RequestMapping("/adminListFlower")
	public String adminListFlower() {
		return "admin/flower/adminListFlower";
	}
	
	@RequestMapping(value = "/adminDetailFlower", method=RequestMethod.GET)
	public String adminDetailFlower(Model model, @RequestParam("flowerName") String flowerName) {
	    List<Flower> flowerList = flowerService.getDetailFlowers(flowerName);
	    model.addAttribute("flowerList", flowerList);
		return "admin/flower/adminDetailFlower";
	}
	
	@RequestMapping("/addFlower")
	public String addFlower() {
		return "admin/flower/addFlower";
	}
	
	@RequestMapping("/fixFlower")
	public String fixFlower() {
		return "admin/flower/fixFlower";
	}
	
	
	@RequestMapping(value = "/fixFlower", method=RequestMethod.GET)
	public String fixFlower(Model model, @RequestParam("flowerName") String flowerName) {
	    List<Flower> flowerList = flowerService.getDetailFlowers(flowerName);
	    model.addAttribute("flowerList", flowerList);
		return "admin/flower/fixFlower";
	}
	@ResponseBody
	@PostMapping("/adminListFlower")
	public List<Flower> getAdminFlowers() {
		return flowerService.getAdminFlowers();
	}

	@ResponseBody	
	@DeleteMapping("adminDel/{flowerNum}")
	public void delFlower(@PathVariable int flowerNum) {
		flowerService.delFlower(flowerNum);
	}
	
	@ResponseBody
	@PostMapping("/addFlower")
	public ModelAndView addFlower(Flower flower, ModelAndView mv){
		String flowerFileName = flower.getFlowerImgfile().getOriginalFilename();
		saveFlowerFile(attachPath + "/" + flowerFileName, flower.getFlowerImgfile());
		flower.setFlowerImgfileName(flowerFileName);
		
		String detailFileName = flower.getDetailImgfile().getOriginalFilename();
		saveDetailFile(attachPath + "/" + detailFileName, flower.getDetailImgfile());
		flower.setDetailImgfileName(detailFileName);
		flowerService.addFlower(flower);
		return mv;
	}
	
	@ResponseBody
	@PostMapping("/fixFlower")
	public ModelAndView fixFlower(Flower flower, ModelAndView mv){
		String flowerFileName = flower.getFlowerImgfile().getOriginalFilename();
		saveFlowerFile(attachPath + "/" + flowerFileName, flower.getFlowerImgfile());
		flower.setFlowerImgfileName(flowerFileName);
		
		String detailFileName = flower.getDetailImgfile().getOriginalFilename();
		saveDetailFile(attachPath + "/" + detailFileName, flower.getDetailImgfile());
		flower.setDetailImgfileName(detailFileName);
		flowerService.addFlower(flower);
		return mv;
	}
	
	private void saveFlowerFile(String flowerFileName, MultipartFile flowerFile) { // 절대경로 
		try {
			flowerFile.transferTo(new File(flowerFileName));
		} catch(IOException e) {}
	}
	
	private void saveDetailFile(String flowerFileName, MultipartFile detailFile) { // 절대경로 
		try {
			detailFile.transferTo(new File(flowerFileName));
		} catch(IOException e) {}
	}
}
