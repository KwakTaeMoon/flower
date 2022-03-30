package kwaktaemoon.flower.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kwaktaemoon.flower.domain.Notice;
import kwaktaemoon.flower.service.NoticeService;

@Controller
@RequestMapping("/admin/notice")
public class NoticeAdminController {
	@Autowired private NoticeService noticeService;
	
	@RequestMapping("/list")
	public String getListAddr() {
		return "admin/notice/list";
	}

	@RequestMapping("/add")
	public String getAddAddr() {
		return "admin/notice/add";
	}	

	@RequestMapping("/fix")
	public String getfixAddr() {
		return "admin/notice/fix";
	}	
	
	@RequestMapping("/find")
	public String getfindAddr() {
		return "admin/notice/find";
	}
	
	@GetMapping("/find?noticeNo={noticeNum}")
	public void findNoticeAddr() {
		
	}	
	
	@GetMapping("/fix?noticeNo={noticeNum}")
	public void fixNoticeAddr() {
		
	}	
	
	@ResponseBody
	@PostMapping("/list")
	public List<Notice> getList(){
		return noticeService.getNotices();
	}
	
	@ResponseBody
	@PostMapping("/add")
	public int addNotice(@RequestBody Notice notice) {
		return noticeService.addNotice(notice);
	}

	@ResponseBody
	@PostMapping("/find")
	public Notice findNotice(@RequestBody Notice notice, HttpServletRequest request) {
		return noticeService.getNotice(notice.getNoticeNum());
	}	
	
	@ResponseBody
	@PostMapping("/fix")
	public int fixNotice(@RequestBody Notice notice) {
		int result = 0;
		if(!notice.getTitle().equals("") && !notice.getContent().equals("")) {
			noticeService.fixNotice(notice);
			result = 1;
		}
		return result;
	}
	
	@ResponseBody
	@PostMapping("/del/{noticeNum}")
	public void delNotice(@PathVariable int noticeNum) {
		noticeService.delNotice(noticeNum);
	}
}

