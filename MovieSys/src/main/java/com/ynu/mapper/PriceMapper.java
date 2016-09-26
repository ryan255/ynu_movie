package com.ynu.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ynu.dto.Play;
import com.ynu.dto.Price;


@Repository("PriceMapper")
public interface PriceMapper {
	
	public List<Price> selectPriceByfilmName(String f_name);
}
