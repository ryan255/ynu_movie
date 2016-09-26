package com.ynu.mapper;

import java.util.List;

import com.ynu.dto.Studio;

public interface StudioMapper {
	public List<Studio> selectAllStudio();
	public void insertStudio(Studio studio);
	public void deleteStudioByName(String studio_name);
}
