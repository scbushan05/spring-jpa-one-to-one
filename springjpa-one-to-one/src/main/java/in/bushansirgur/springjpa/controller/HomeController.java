package in.bushansirgur.springjpa.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import in.bushansirgur.springjpa.model.User;
import in.bushansirgur.springjpa.model.UserProfile;
import in.bushansirgur.springjpa.service.UserService;

@Controller
public class HomeController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping("/register")
	public ModelAndView register(){
		ModelAndView mav = new ModelAndView("register");
		UserProfile uProfile = new UserProfile();
		User user = new User();
		user.setUserProfile(uProfile);
		mav.addObject("user", user);
		return mav;
	}
	
	@RequestMapping({"/", "/index", "/home", "/login"})
	public ModelAndView login(){
		ModelAndView mav = new ModelAndView("login");
		return mav;
	}
	
	@RequestMapping("/saveuser")
	public ModelAndView saveuser(@ModelAttribute("user") User user, HttpServletRequest request){
		ModelAndView mav = new ModelAndView("login");
		user.getUserProfile().setUser(user);
		userService.save(user);
		mav.addObject("successmsg", true);
		return mav;
	}
	
	@RequestMapping("/loginuser")
	public ModelAndView login(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		String email = request.getParameter("email").toString();
		String password = request.getParameter("password").toString();
		User user = userService.get(email, password);
		if(user != null){
			mav.setViewName("success");
		}else {
			mav.setViewName("login");
		}
		return mav;
	}
	
	@RequestMapping("/logout")
	public ModelAndView logout(HttpServletRequest request){
		ModelAndView mav = new ModelAndView("login");
		return mav;
	}
}
