package com.ynu;

import java.sql.Date;
import java.sql.Time;
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

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.ynu.dto.Auditorium;
import com.ynu.dto.Classification;
import com.ynu.dto.Edition;
import com.ynu.dto.Film_infor;
import com.ynu.dto.Play;
import com.ynu.dto.Price;
import com.ynu.dto.Seat;
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
		model.addAttribute("filmOnline", filmOnline);
		model.addAttribute("filmComing", filmComing);
		return "home";
	}

	@RequestMapping(value = "/movies")
	public String filmForMovies(Model model) {
		System.out.println("index2");
		List<Film_infor> filmOnline = film_inforService.selectAllFilmOnline();
		List<Film_infor> filmComing = (List<Film_infor>) film_inforService.selectFilmComing();
		System.out.println("2");
		model.addAttribute("filmOnline", filmOnline);
		model.addAttribute("filmComing", filmComing);
		return "movies";
	}

	@RequestMapping(value = "/selectfilmByfilmName")
	public String selectMovieByName(@RequestParam("f_name") String filmName, Model model) {
		System.out.println(filmName);
		Film_infor film_infor = film_inforService.selectPlayByfilmName(filmName);
		model.addAttribute(film_infor);
		List<Classification> classifications = film_infor.getClassifications();
		String classe = null;
		for (Classification classification : classifications) {
			classe = classification.getClass_name();
		}
		model.addAttribute("classe", classe);
		System.out.println(classe);
		return "movie-select";
	}

	@RequestMapping(value = "/selectseat")
	public String selectseat(@RequestParam("idPrice") Integer priceId, Model model) {
		System.out.println(priceId);
		Film_infor film_infor = film_inforService.selectPlayBypriceId(priceId);
		model.addAttribute(film_infor);
		List<Classification> classifications = film_infor.getClassifications();
		List<Studio> studios = film_infor.getStudios();
		List<Auditorium> auditoriums = film_infor.getAuditoriums();
		List<Edition> editions = film_infor.getEditions();
		List<Price> prices = film_infor.getPrices();
		List<Seat> seats = film_infor.getSeats();

		String classe = null;
		for (Classification classification : classifications) {
			classe = classification.getClass_name();
		}
		String studio = null;
		for (Studio studio2 : studios) {
			studio = studio2.getStudio_name();
		}
		String auditorium = null;
		int col = 0, row = 0;
		for (Auditorium auditorium2 : auditoriums) {
			auditorium = auditorium2.getAuditorium_num();
			col = auditorium2.getAuditorium_col();
			row = auditorium2.getAuditorium_row();
		}
		System.out.println(col + "row:" + row);
		System.out.println(seats.size());
		String a = "";
		String aa = "aa";
		String b = a + aa;
		System.out.println("b:" + b);
		List<String> st = new ArrayList<String>();
		List<String> saled = new ArrayList<String>();
		int num = 1;
		while (num <= row * col) {
			for (int i = 1; i <= row; i++) {
				String state = "";
				for (int j = 1; j <= col; j++) {
					for (Seat seat : seats) {
						if (seat.getSeat_num() == num) {
							if (seat.getSeat_state() == 1) {
								state = state + "a";
							} else if (seat.getSeat_state() == 2) {
								System.out.println("2");
								state = state + "a";
								String oder = i + "_" + j;
								System.out.println(oder);
								saled.add(oder);
							} else {
								state = state + "_";
							}
						}
						
					}
					num++;
				}
				st.add(state);
			}

		}

		System.out.println("st:" + st);
		System.out.println("saled:" + saled);
		String edition = null;
		for (Edition edition2 : editions) {
			edition = edition2.getEdition_name();
		}
		Long price = (Long) null;
		Time screen = null;
		for (Price price2 : prices) {
			price = price2.getPrices();
			screen = price2.getPrice_screens();
		}

		ObjectMapper mapper = new ObjectMapper();
		try {
			String seat3 = mapper.writeValueAsString(st);
			String saled2 = mapper.writeValueAsString(saled);
			model.addAttribute("saled", saled2);
			model.addAttribute("seat", seat3);
			System.out.println(seat3);
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		model.addAttribute("price", price);
		model.addAttribute("screen", screen);
		model.addAttribute("edition", edition);
		model.addAttribute("auditorium", auditorium);
		model.addAttribute("studio", studio);
		model.addAttribute("classe", classe);
		System.out.println(classe);
		return "seat-select";
	}

	
	@RequestMapping(value = "/home2")
	public String film_infor3(Model model) {
		System.out.println("index3");
		PageInfo<Film_infor> filmOnline = film_inforService.queryByPage(1,5);
		System.out.println("3333333333");
		model.addAttribute("filmOnline",filmOnline);
		return "home2";
	}

}
