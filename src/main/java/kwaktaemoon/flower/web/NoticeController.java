package kwaktaemoon.flower.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kwaktaemoon.flower.domain.Notice;
import kwaktaemoon.flower.service.NoticeService;

@Controller
@RequestMapping("/notice")
public class NoticeController {
	@Autowired private NoticeService noticeService;
	
	@GetMapping("/listNotice")
	public List<Notice> getNotices(){
		return noticeService.getNotices();
	}
	
	@RequestMapping(value = "/detailNotice", method=RequestMethod.GET)
	public String getdetailNotices(Model model, @RequestParam("noticeNum") int noticeNum){
		List<Notice> noticeList = noticeService.getdetailNotices(noticeNum);
		model.addAttribute("noticeList", noticeList);
		return "notice/detailNotice";
	}
	
	@PostMapping("/addNotice")
	public void addNotice(Notice notice) {
		noticeService.addNotice(notice);
	}
	
	@PutMapping("/fixNotice")
	public void fixNotice(int noticeNum) {
		noticeService.fixNotice(noticeNum);
	}
	
	@DeleteMapping("/delNotice/{noticeNum}") 
	public void delNotice(int noticeNum) {
		noticeService.delNotice(noticeNum);
	}
}

