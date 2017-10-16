package com.hanbit.cgv;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hanbit.cgv.command.Command;
import com.hanbit.cgv.mapper.Mapper;
import com.hanbit.cgv.service.IGetService;
import com.hanbit.cgv.service.IListService;
import com.hanbit.cgv.service.IPostService;


@org.springframework.web.bind.annotation.RestController
public class RestController {
	@Autowired Command command;
	@Autowired Mapper mapper;
	IListService listService=null;
	IGetService getService=null;
	IPostService postService=null;
	
	@RequestMapping(value="/parameter",method=RequestMethod.POST)
	public @ResponseBody Map<?,?> parameter(@RequestBody Map<Object,Object> param){
		return param;
	}
	
	@RequestMapping(value="/get/reservation",method=RequestMethod.POST)
	public @ResponseBody Map<?,?> getReservation(Model model){
		Map<String,Object> map=new HashMap<>();
		command.setTable("movie");
		listService=(x) ->{
			return mapper.selectSome(command);
		};
		map.put("movie", listService.excute(command));
		
		command.setTable("place");
		listService=(x) ->{
			return mapper.selectSome(command);
		};
		map.put("place", listService.excute(command));
		
		command.setTable("theater");
		listService=(x) ->{
			return mapper.selectSome(command);
		};
		map.put("theater", listService.excute(command));
		
		command.setTable("schedule");
		listService=(x) ->{
			return mapper.selectSome(command);
		};
		map.put("schedule", listService.excute(command));
		
		command.setTable("reservation");
		listService=(x) ->{
			return mapper.selectSome(command);
		};
		map.put("reservation", listService.excute(command));
		
		return map;
	}
	
	@RequestMapping(value="/post/reservation",method=RequestMethod.POST)
	public @ResponseBody Map<?,?> postReservation(@RequestBody Map<String,Object> param){
		Map<String,Object> map=new HashMap<>();
		command.setTable("reservation");
		command.setParam(param);
		postService=(x) ->{
			return mapper.insert(command);
		};
		map.put("result", postService.excute(command));
		return param;
	}
	
	@RequestMapping(value="/get/movieChart",method=RequestMethod.POST)
	public @ResponseBody Map<?,?> getMovieChart(Model model){
		Map<String,Object> map=new HashMap<>();
		command.setTable("movieChart");
		listService=(x) ->{
			return mapper.selectSome(command);
		};
		map.put("movieChart", listService.excute(command));
		return map;
	}
	
	@RequestMapping(value="/get/movieDetail",method=RequestMethod.POST)
	public @ResponseBody Map<?,?> getMovieDetail(Model model){
		Map<String,Object> map=new HashMap<>();
		command.setTable("movieDetail");
		listService=(x) ->{
			return mapper.selectSome(command);
		};
		map.put("movieDetail", listService.excute(command));
		
		command.setTable("comment");
		listService=(x) ->{
			return mapper.selectSome(command);
		};
		map.put("comment", listService.excute(command));
		return map;
	}
	
	@RequestMapping(value="/get/loginPage",method=RequestMethod.POST)
	public @ResponseBody Map<?,?> getLoginPage(@RequestBody Map<String,Object> param){
		Map<String,Object> map=new HashMap<>();
		command.setTable("login");
		getService=(x) ->{
			return mapper.selectOne(command);
		};
		String result="";
		if(getService.excute(command).equals("0")) {
			result="fail";
		}else {
			result="success";
		}
		map.put("login", result);
		return map;
	}
}
