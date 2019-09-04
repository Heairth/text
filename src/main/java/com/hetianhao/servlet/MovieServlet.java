package com.hetianhao.servlet;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.hetianhao.entity.Dept;
import com.hetianhao.entity.Movie;
import com.hetianhao.service.SerInter;
//控制层
@Controller
public class MovieServlet {
	@Resource
	private SerInter ser;
	//列表
	@SuppressWarnings("static-access")
	@RequestMapping("list.do")
	public String list(Model model,
			String mname,
			@RequestParam(defaultValue = "1")Integer pageNum
			) {
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("mname", mname);
		PageHelper pageHelper=new PageHelper();
		pageHelper.startPage(pageNum,3);
		List<Movie> list = ser.findAll(map);
		PageInfo<Movie> page=new PageInfo<Movie>(list);
		model.addAttribute("page",page);
		model.addAttribute("list",list);
		model.addAttribute("map",map);
		return "list";
	}
	//批量删除
	@RequestMapping("delete.do")
	@ResponseBody
	public boolean delete(String[] mid) {
		boolean b = ser.deleteone(mid);
		return b;
	}
	//添加
	@RequestMapping("add.do")
	@ResponseBody
	public boolean add(Movie movie,Dept dept) {
		boolean b = ser.insertone(movie,dept);
		return b;
	}
	@RequestMapping("toupdate.do")
	@ResponseBody
	public Movie huixian(Integer mid) {
		Movie huixian = ser.huixian(mid);
		return huixian;
	}
	@RequestMapping("update.do")
	@ResponseBody
	public boolean update(Movie movie) {
		boolean b = ser.update(movie);
		return b;
	}
}
