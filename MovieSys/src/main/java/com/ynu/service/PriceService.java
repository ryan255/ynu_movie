package com.ynu.service;

import java.util.List;

import com.ynu.dto.Price;

public interface PriceService {
	public List<Price> selectPriceByfilmName(String f_name);
}
