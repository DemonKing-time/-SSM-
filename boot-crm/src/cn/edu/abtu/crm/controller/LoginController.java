package cn.edu.abtu.crm.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cn.edu.abtu.crm.pojo.User;
import cn.edu.abtu.crm.service.IUserService;

@Controller
@RequestMapping("/login")
public class LoginController {
	@Autowired
	private IUserService userService;

	@RequestMapping("/login")
	public ModelAndView login(User user, HttpSession session) {
		ModelAndView mv = new ModelAndView();
		User t = userService.findUserByUserNameAndPassword(user);
		if (t != null) {
			mv.setViewName("redirect:/student/list");
			session.setAttribute("user", t);
		} else {
			mv.setViewName("forward:/index.jsp");
		}
		return mv;
	}
}
