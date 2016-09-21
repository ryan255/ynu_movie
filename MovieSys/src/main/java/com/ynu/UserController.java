package com.ynu;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
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
	public String loginCheck(@RequestParam("userName")String name,@RequestParam("userPw")String password,Model model,HttpSession session){
		System.out.println(name+"..."+password);
		if (name.equals("")||password.equals("")) {
			model.addAttribute("msg","用户名或密码不能为空");
			return "login";
		}else {
			User user = userService.find(name);
			System.out.println("user");
			if (user==null) {
				System.out.println("用户名错误");
				model.addAttribute("msg","用户名或密码错误");
				return "login";
			}else{
				if (user.getUserPw().equals(password)) {
//					model.addAttribute("name",name);
					session.setAttribute("sessionname", name);
					return "success";
				}else{
					model.addAttribute("msg","用户名或密码错误");
					return "login";
				}
			}
			
		}
	}
	

}
