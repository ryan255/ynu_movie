package com.ynu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.SystemPropertyUtils;

import com.ynu.dto.Price;
import com.ynu.mapper.PriceMapper;
import com.ynu.service.PriceService;

@Service
public class PriceServiceImpl implements PriceService {
	
	@Autowired 
	private PriceMapper priceMapper;

	public List<Price> selectPriceByfilmName(String f_name) {
		List<Price> prices = priceMapper.selectPriceByfilmName(f_name);
		
		System.out.println("service："+prices.size());
		return priceMapper.selectPriceByfilmName(f_name);
	}

	

}
