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
		return studioMapper.selectAllStudio();
	}
	public void insertStudio(Studio studio) {
		studioMapper.insertStudio(studio);
	}
	public void deleteStudioByName(String studio_name) {
		studioMapper.deleteStudioByName(studio_name);
	}

}
