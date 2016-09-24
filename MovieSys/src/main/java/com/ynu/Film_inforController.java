package com.ynu;


import java.sql.Date;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ynu.dto.Film_infor;
import com.ynu.dto.Studio;
import com.ynu.service.Film_inforService;


@Service
@Controller
public class Film_inforController {
	
	@Autowired
	private Film_inforService film_inforService;
	
	@RequestMapping(value = "/home")
	public String film_infor(Model model) {
		System.out.println("index2");
		List<Film_infor> filmOnline = film_inforService.selectAllFilmOnline();
		List<Film_infor> filmComing = (List<Film_infor>) film_inforService.selectFilmComing();
		System.out.println("2");
		model.addAttribute("filmOnline",filmOnline);
		model.addAttribute("filmComing", filmComing);
		return "home";
	}
	
	@RequestMapping(value = "/movies")
	public String filmForMovies(Model model) {
		System.out.println("index2");
		List<Film_infor> filmOnline = film_inforService.selectAllFilmOnline();
		List<Film_infor> filmComing = (List<Film_infor>) film_inforService.selectFilmComing();
		System.out.println("2");
		model.addAttribute("filmOnline",filmOnline);
		model.addAttribute("filmComing", filmComing);
		return "movies";
	}
	
	@RequestMapping(value="/selectfilmByfilmName")
	public String selectMovieByName(@RequestParam("f_name")String filmName,Model model){
		System.out.println(filmName);
		Film_infor film_infor = film_inforService.selectPlayByfilmName(filmName);
		model.addAttribute(film_infor);
		
		List<Studio> studios = film_infor.getStudios();
		for(Studio studio:studios){
			System.out.println("进入循环");
			System.out.println(studio.getStudio_name());
		}
		model.addAttribute("studios", studios);
		return "movie-select";
	}
	
	@RequestMapping("/")    
    public ModelAndView getIndex(){      
        ModelAndView mav = new ModelAndView("test");   
        Film_infor film_infor = film_inforService.selectFilm_inforById(1);  
        mav.addObject("film_infor", film_infor);   
        return mav;    
    }    

}
