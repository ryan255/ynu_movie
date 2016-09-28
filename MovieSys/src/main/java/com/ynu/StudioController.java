package com.ynu;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ynu.dto.Film_infor;
import com.ynu.dto.Studio;
import com.ynu.service.StudioService;

@Service
@Controller
public class StudioController {
	@Autowired
	private StudioService studioService;
	
	@RequestMapping(value="/home3")
	public String selectAllStuidio(Model model){
		List<Studio> studios = studioService.selectAllStudio();
		model.addAttribute("studios", studios);
		return "success";
	}
	
	@RequestMapping(value="/addstudio",method=RequestMethod.POST)
	public String addstudio(@RequestParam("studio_name")String name,@RequestParam("studio_address")String address,@RequestParam("studio_phone")String phone,ModelMap model){
		System.out.println(name);
		Studio studio = new Studio();
		studio.setStudio_name(name);
		studio.setStudio_online("是");
		studio.setStudio_address(address);
		studio.setStudio_phone(phone);
		studio.setStudio_text("因为很懒所以没有添加描述");
		studioService.insertStudio(studio);
		model.addAttribute("message","影院添加成功");
		System.out.println("successadd");
		return "redirect:home";
		
	}
}
