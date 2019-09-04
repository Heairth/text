package com.hetianhao.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.hetianhao.entity.Dept;
import com.hetianhao.entity.Movie;
import com.hetianhao.mapper.MovieDao;
//实现业务
@Service
public class SerImpl implements SerInter{
	@Resource
	private MovieDao dao;

	public List<Movie> findAll(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.findAll(map);
	}

	public boolean deleteone(String[] mid) {
		// TODO Auto-generated method stub
		Integer i = dao.deleteone(mid);
		if(i>0) {
			dao.deletetwo(mid);
			return true;
		}
		return false;
	}

	public boolean insertone(Movie movie,Dept dept) {
		// TODO Auto-generated method stub
		dao.insertone(movie);
		Integer mid = movie.getMid();
		dao.inserttwo(dept);
		Integer did = dept.getDid();
		dao.insertthree(mid,did);
		return true;
	}

	public Movie huixian(Integer mid) {
		// TODO Auto-generated method stub
		return dao.huixian(mid);
	}

	public boolean update(Movie movie) {
		// TODO Auto-generated method stub
		Integer integer = dao.update(movie);
		if(integer>0) {
			return true;
		}
		return false;
	}

}

