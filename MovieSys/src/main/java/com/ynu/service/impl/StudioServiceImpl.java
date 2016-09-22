package com.ynu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ynu.dto.Studio;
import com.ynu.mapper.StudioMapper;
import com.ynu.service.StudioService;

@Service
public class StudioServiceImpl implements StudioService {

	@Autowired
	private StudioMapper studioMapper;
	public List<Studio> selectAllStudio() {
		// TODO Auto-generated method stub
		return studioMapper.selectAllStudio();
	}

}
