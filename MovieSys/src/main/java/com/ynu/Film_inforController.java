package com.ynu;


import java.sql.Date;
import java.util.ArrayList;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.util.SystemPropertyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ynu.dto.Auditorium;
import com.ynu.dto.Classification;
import com.ynu.dto.Edition;
import com.ynu.dto.Film_infor;
import com.ynu.dto.Play;
import com.ynu.dto.Price;
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
		List<Play> plays = film_infor.getPlays();
		List<Classification> classifications = film_infor.getClassifications();
		List<Price> prices = film_infor.getPrices();
		List<Studio> studios = film_infor.getStudios();
		List<Auditorium> auditoriums = film_infor.getAuditoriums();
		List<Edition> editions = film_infor.getEditions();
		String classe = null;
		for(Classification classification:classifications){
			classe = classification.getClass_name();
		}
	

		
		for(Play play:plays){
			System.out.println(play.getPlay_ontime());
		}
		
		model.addAttribute("classe",classe);
		System.out.println(classe);
		model.addAttribute("studios", studios);
		model.addAttribute("editions", editions);
		model.addAttribute("auditoriums", auditoriums);
		model.addAttribute("prices", prices);
		model.addAttribute("plays", plays);
		return "movie-select";
	}
	
	@RequestMapping("/")    
    public ModelAndView getIndex(){      
        ModelAndView mav = new ModelAndView("test");   
        Film_infor film_infor = film_inforService.selectFilm_inforById(1);  
        mav.addObject("film_infor", film_infor);   
        return mav;    
    }    
	
	
	@RequestMapping(value = "/home2")
	public String film_infor3(Model model) {
		System.out.println("index3");
		PageInfo<Film_infor> filmOnline = film_inforService.queryByPage(1, 1);
		System.out.println("3333333333");
		model.addAttribute("filmOnline",filmOnline);
		return "home2";
	}

	

}
