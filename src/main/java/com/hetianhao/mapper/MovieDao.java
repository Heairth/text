package com.hetianhao.mapper;

import java.util.List;
import java.util.Map;

import com.hetianhao.entity.Dept;
import com.hetianhao.entity.M_D;
import com.hetianhao.entity.Movie;
//³Ö¾Ã²ã
public interface MovieDao {
	public List<Movie> findAll(Map<String, Object> map);
	
	public Integer deleteone(String[] mid);
	public Integer deletetwo(String[] mid);
	
	public Integer insertone(Movie movie);
	public Integer inserttwo(Dept dept);
	public Integer insertthree(Integer mid,Integer did);
	
	public Movie huixian(Integer mid);
	
	public Integer update(Movie movie);
}
