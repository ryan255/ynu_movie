package com.ynu;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ynu.dto.Admin;
import com.ynu.dto.Studio;
import com.ynu.dto.User;
import com.ynu.service.AdminService;

@Service
@Controller
public class AdminController {
	@Autowired
	private AdminService adminService;
	
	@RequestMapping(value="/loginadmin")
	public String loginCheck(@RequestParam("admin_name")String name,@RequestParam("admin_pw")String password,Model model,HttpSession session){
		System.out.println("管理员填写的账号和密码是："+name+"和"+password);
		if (name.equals("")||password.equals("")) {
			model.addAttribute("message","用户名或密码不能为空");
			return "success";
		}else {
			Admin admin = adminService.find(name);			
			
			System.out.println("成功调用finduser");
			
			if (admin==null) {
				System.out.println("用户名错误");
				model.addAttribute("message","用户名或密码错误");
				return "success";
			}else{
				System.out.println("取出的用户"+admin.getAdmin_name());
				if (admin.getAdmin_pw().equals(password)) {
//					model.addAttribute("name",name);
					int idUser = admin.getIdAdmin();
					Admin admin2 = adminService.selectAdminStudioById(idUser);
					List<Studio> studios = admin2.getStudios();
					Studio studio2 = null;
					for(Studio studio:studios){
						studio2 = studio;
					}
					session.setAttribute("successadmin", admin.getAdmin_name());
					session.setAttribute("adminTEL", admin.getAdmin_phone());
					model.addAttribute("admin", admin2);
					model.addAttribute("studio", studio2);
					System.out.println(studio2.getStudio_name());
					System.out.println(admin.getAdmin_name());
					return  "manager-message";
				}else{
					model.addAttribute("message","用户名或密码错误");
					return "success";
				}
			}
			
		}
	}
	
	@RequestMapping(value="/registeradmin",method=RequestMethod.POST)
	public String registerAdmin(@RequestParam("admin_phone")String phone,@RequestParam("admin_pw")String password,ModelMap model){
		System.out.println(phone);
		Admin admin = new Admin();
		admin.setAdmin_phone(phone);
		admin.setAdmin_pw(password);
		admin.setAdmin_name("未命名");
		adminService.insertAdmin(admin);
		model.addAttribute("message","登录成功");
		System.out.println("successadmin");
		return "redirect:home";
		
	}

}
