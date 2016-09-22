package com.ynu;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ynu.dto.Studio;
import com.ynu.service.StudioService;

@Service
@Controller
public class StudioController {
	@Autowired
	private StudioService studioService;
	
	@RequestMapping(value="/home2")
	public String selectAllStuidio(Model model){
		List<Studio> studios = studioService.selectAllStudio();
		model.addAttribute("studios", studios);
		return "home";
	}
}
