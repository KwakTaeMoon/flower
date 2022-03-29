package kwaktaemoon.flower.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kwaktaemoon.flower.domain.Notice;
import kwaktaemoon.flower.service.NoticeService;

@Controller
@RequestMapping("/notice")
public class NoticeController {
	@Autowired private NoticeService noticeService;
	
	@GetMapping("/listNotice")
	public String getListAddr() {
		return "notice/listNotice";
	}

	@RequestMapping("/find")
	public String getfindAddr() {
		return "/notice/find";
	}
	
	@GetMapping("/find?noticeNo={noticeNum}")
	public void findNoticeAddr() {
		
	}	
	
	@ResponseBody
	@PostMapping("/list")
	public List<Notice> getList(){
		return noticeService.getNotices();
	}
	
	@ResponseBody
	@PostMapping("/find")
	public Notice findNotice(@RequestBody Notice notice, HttpServletRequest request) {
		return noticeService.getNotice(notice.getNoticeNum());
	}	
}


