package com.ynu;


import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ynu.dto.Film_infor;
import com.ynu.service.Film_inforService;


@Service
@Controller
public class Film_inforController {
	
	@Autowired
	private Film_inforService film_inforService;
	
	@RequestMapping(value = "/index2")
	public String film_infor(Model model) {
		System.out.println("index2");
		List<Film_infor> filmOnline = film_inforService.selectAllFilmOnline();
		List<Film_infor> filmComing = (List<Film_infor>) film_inforService.selectFilmComing();
		System.out.println("2");
		model.addAttribute("filmOnline",filmOnline);
		model.addAttribute("filmComing", filmComing);
		return "index2";
	}
	

}
