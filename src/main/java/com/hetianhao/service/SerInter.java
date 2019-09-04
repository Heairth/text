package com.hetianhao.service;

import java.util.List;
import java.util.Map;

import com.hetianhao.entity.Dept;
import com.hetianhao.entity.Movie;
//ÒµÎñ²ã
public interface SerInter {
	public List<Movie> findAll(Map<String, Object> map);	
	
	public boolean deleteone(String[] mid);
	
	public boolean insertone(Movie movie,Dept dept);
	
	public Movie huixian(Integer mid);
	
	public boolean update(Movie movie);
}
