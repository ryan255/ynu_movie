package com.ynu;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ynu.dto.Auditorium;
import com.ynu.dto.Price;
import com.ynu.dto.Studio;
import com.ynu.service.PriceService;

@Service
@Controller
public class PriceController {

	@Autowired
	private PriceService priceService;
	
	@RequestMapping(value="selectPriceByfilmName")
	public String selectPriceByPlayId(@RequestParam("f_name")String film_name,Model model){
		System.out.println("selectPriceByfilmName");
		System.out.println(film_name);
		List<Price> prices = priceService.selectPriceByfilmName(film_name);
		System.out.println(prices.size());
		List<Studio> studios =  new ArrayList<Studio>();
		model.addAttribute("prices",prices);
		return "movie-select";
	}
}
