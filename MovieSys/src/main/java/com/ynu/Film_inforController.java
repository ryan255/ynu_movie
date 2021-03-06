package com.ynu;

import java.sql.Date;
import java.sql.Time;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.util.SystemPropertyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.ynu.dto.Admin;
import com.ynu.dto.Auditorium;
import com.ynu.dto.Classification;
import com.ynu.dto.Edition;
import com.ynu.dto.Film_infor;
import com.ynu.dto.Order;
import com.ynu.dto.OrderSeat;
import com.ynu.dto.Play;
import com.ynu.dto.Price;
import com.ynu.dto.Seat;
import com.ynu.dto.Studio;
import com.ynu.dto.User;
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
		int col = 0, row = 0, aid = 0;
		for (Auditorium auditorium2 : auditoriums) {
			auditorium = auditorium2.getAuditorium_num();
			aid = auditorium2.getIdAuditorium();
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
		Integer pid = 0;
		for (Price price2 : prices) {
			price = price2.getPrices();
			screen = price2.getPrice_screens();
			pid = price2.getIdPrice();
		}

		ObjectMapper mapper = new ObjectMapper();
		try {
			String seat3 = mapper.writeValueAsString(st);
			String saled2 = mapper.writeValueAsString(saled);
			model.addAttribute("saled", saled2);
			model.addAttribute("seat", seat3);
			System.out.println("seat:" + seat3);
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("aid:" + aid);
		model.addAttribute("aid", aid);
		model.addAttribute("price", price);
		model.addAttribute("screen", screen);
		model.addAttribute("edition", edition);
		model.addAttribute("auditorium", auditorium);
		model.addAttribute("studio", studio);
		model.addAttribute("classe", classe);
		model.addAttribute("pid", pid);
		System.out.println(classe);
		return "seat-select";
	}

	@RequestMapping(value = "/home2")
	public String film_infor3(Model model) {
		System.out.println("index3");
		PageInfo<Film_infor> filmOnline = film_inforService.queryByPage(1, 5);
		System.out.println("3333333333");
		model.addAttribute("filmOnline", filmOnline);
		return "home2";
	}
	
	@RequestMapping(value="/addmovie",method=RequestMethod.POST)
	public String addmovie(@RequestParam("f_name")String name,@RequestParam("f_director")String director,@RequestParam("f_star")String star,@RequestParam("idClass")Integer idclass,@RequestParam("f_time")Integer time,ModelMap model){
		System.out.println(name);
		Film_infor film_infor = new Film_infor();
		film_infor.setF_name(name);
		film_infor.setF_director(director);
		film_infor.setF_star(star);
		film_infor.setIdClass(idclass);
		film_infor.setF_time(time);
		film_inforService.insertFilm(film_infor);
		model.addAttribute("message","电影添加成功");
		System.out.println("successadd");
		return "redirect:home";
		
	}

	@RequestMapping(value = "/selectUserInforOrder")
	public String selectUserInforOrder(@RequestParam("idUser") Integer user_id, Model model) {
		System.out.println("user_id:" + user_id);
		User user = film_inforService.selectUserOrder(user_id);
		List<Film_infor> film_infors = new ArrayList<Film_infor>();
		List<Integer> priceId = new ArrayList<Integer>();
		List<Order> orders = user.getOrders();
		List<OrderSeat> orderSeats = user.getOrderSeats();
		List<Price> prices = new ArrayList<Price>();
		List<Play> plays = new ArrayList<Play>();
		List<Auditorium> auditoriums = new ArrayList<Auditorium>();
		List<Studio> studios = new ArrayList<Studio>();
		List<Edition> editions = new ArrayList<Edition>();
		List<Seat> seats = user.getSeats();

		try {
			for (Order order : user.getOrders()) {
				int idPrice = order.getIdPrice();
				if (!priceId.contains(idPrice)) {
					priceId.add(idPrice);
				}
			}
			for (Integer integer : priceId) {
				Film_infor film_infor = film_inforService.selectPlayBypriceId(integer);
				film_infors.add(film_infor);
			}
			for (Seat seat : seats) {
				System.out.println("seat:" + seat.getSeat_order());
			}
			for (OrderSeat orderSeat : orderSeats) {
				System.out.println("idSeat:" + orderSeat.getFk_orderSeat_idSeat());
			}
			for (Film_infor film_infor2 : film_infors) {
				List<Price> prices2 = film_infor2.getPrices();
				List<Edition> editions2 = film_infor2.getEditions();
				List<Play> plays2 = film_infor2.getPlays();
				List<Auditorium> auditoriums2 = film_infor2.getAuditoriums();
				List<Studio> studios2 = film_infor2.getStudios();
				for (Edition edition : editions2) {
					editions.add(edition);
				}
				for (Price price : prices2) {
					prices.add(price);
				}
				for (Play play : plays2) {
					plays.add(play);
				}
				for (Studio studio : studios2) {
					System.out.println(studio.getStudio_name());
					studios.add(studio);
				}
				for (Auditorium auditorium : auditoriums2) {
					auditoriums.add(auditorium);
				}
			}
			model.addAttribute("orderseats", orderSeats);
			model.addAttribute("seats", seats);
			model.addAttribute("orders", orders);
			model.addAttribute("user", user);
			model.addAttribute("films", film_infors);
			model.addAttribute("studios", studios);
			model.addAttribute("editions", editions);
			model.addAttribute("auditoriums", auditoriums);
			model.addAttribute("plays", plays);
			model.addAttribute("prices", prices);
			System.out.println("success");
			return "message";

		} catch (Exception e) {
			// TODO: handle exception
			model.addAttribute("none", "暂无信息");
			model.addAttribute("user", user);
			return "message";
		} 
	}

}
