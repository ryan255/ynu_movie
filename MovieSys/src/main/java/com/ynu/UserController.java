package com.ynu;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.ynu.dto.User;
import com.ynu.service.UserService;

@Service
@Controller
public class UserController {
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="/logins",method = RequestMethod.POST)
	public String loginCheck(@RequestParam("user_name")String name,@RequestParam("user_pw")String password,Model model,HttpSession session){
		System.out.println("用户填写的账号和密码是："+name+"和"+password);
		if (name.equals("")||password.equals("")) {
			model.addAttribute("message","用户名或密码不能为空");
			return "success";
		}else {
			User user = userService.find(name);			
			
			System.out.println("成功调用finduser");
			
			if (user==null) {
				System.out.println("用户名错误");
				model.addAttribute("message","用户名或密码错误");
				return "success";
			}else{
				System.out.println("取出的用户"+user.getUser_name());
				if (user.getUser_pw().equals(password)) {
//					model.addAttribute("name",name);
					session.setAttribute("success", name);
					return  "redirect:home";
				}else{
					model.addAttribute("success","用户名或密码错误");
					return "success";
				}
			}
			
		}
	}
	
	@RequestMapping(value="/register",method=RequestMethod.POST)
	public String registerUser(@RequestParam("user_phone")String phone,@RequestParam("user_pw")String password,ModelMap model){
		System.out.println(phone);
		User user = new User();
		user.setUser_phone(phone);
		user.setUser_pw(password);
		user.setUser_name("未命名");
		userService.insertUser(user);
		model.addAttribute("message","登录成功");
		System.out.println("success");
		return "redirect:home";
		
	}

}
