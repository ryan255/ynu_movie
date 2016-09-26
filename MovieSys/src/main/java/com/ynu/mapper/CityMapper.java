package com.ynu.mapper;

import com.ynu.dto.City;

public interface CityMapper {
	public City findCity(String city_name);	
	public void insertCity(City city);
	public void deleteCityByName(String city_name);

}
