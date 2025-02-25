package com.infosys.movieSystem.dao;

import java.util.List;

import com.infosys.movieSystem.bean.ShowTime;

public interface ShowTimeDao {

	public void save(ShowTime showTime);
	public Integer generateShowTimeId();
	public ShowTime findById(Integer Id);
	public List<ShowTime> findAll();
	public void deleteShowTimeById(Integer Id);
	public List<Integer> getAllIds();
	public String getShowTimeName(Integer showTimeId);
	public ShowTime getShowTime(String showTimeName);
	

	
}