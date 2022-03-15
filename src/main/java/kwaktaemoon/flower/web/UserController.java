package kwaktaemoon.flower.web;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kwaktaemoon.flower.domain.User;
import kwaktaemoon.flower.domain.UserDto;
import kwaktaemoon.flower.service.UserService;

@Controller("kwaktaemoon.flower.user")
@RequestMapping("/user")
public class UserController {
	@Autowired private UserService userService;
	
	@GetMapping("/login")
	public String login(UserDto userDto, @CookieValue(required=false) Cookie loginCookie) {
		if(loginCookie != null) userDto.setUserId(loginCookie.getValue());
		return "user/login";
	}
   
	@PostMapping("/login")
	public void loginchk(@RequestParam("userId") String userId, @RequestParam("userPw") String userPw, Model model, HttpServletRequest request){
		HttpSession session = request.getSession();
		User user = userService.chkUser(userId, userPw);
		session.setAttribute("userId", user.getUserId());
		if(user.getUserId().equals("admin")) {
			model.addAttribute("admin",user);
		}else {
			model.addAttribute("user",user);
		}
	}
   
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	@RequestMapping("/join")
	public String join(User user) {
		return "user/join";
	}
	
	@PostMapping("/join")
	public void joinUser(@RequestBody User user) {
		userService.addUser(user);
	}
}
