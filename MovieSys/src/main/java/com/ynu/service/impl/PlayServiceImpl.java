package com.ynu.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ynu.mapper.PlayMapper;
import com.ynu.service.PlayService;

@Service
public class PlayServiceImpl implements PlayService{
	@Autowired
	private PlayMapper playMapper;

	public void deletePlayById(int idPlay) {
		playMapper.deletePlayById(idPlay);
	}

}
