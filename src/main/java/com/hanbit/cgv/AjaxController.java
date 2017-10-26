package com.hanbit.cgv;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hanbit.cgv.command.Command;
import com.hanbit.cgv.mapper.Mapper;
import com.hanbit.cgv.service.IDeleteService;
import com.hanbit.cgv.service.IGetService;
import com.hanbit.cgv.service.IListService;
import com.hanbit.cgv.service.IPostService;
import com.hanbit.cgv.service.IPutService;


@org.springframework.web.bind.annotation.RestController
public class AjaxController {
	@Autowired Command command;
	@Autowired Mapper mapper;
	IListService listService=null;
	IGetService getService=null;
	IPostService postService=null;
	IPutService putService=null;
	IDeleteService deleteService=null;
	
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
	public @ResponseBody Map<?,?> getMovieDetail(@RequestBody Map<String,Object> param){
		Map<String,Object> map=new HashMap<>();
		command.setTable("movieDetail");
		command.setParam(param);
		getService=(x) ->{
			return mapper.selectOne(command);
		};
		
		map.put("movieDetail", getService.excute(command));
		
		command.setTable("comment");
		listService=(x) ->{
			return mapper.selectSome(command);
		};
		map.put("comment", listService.excute(command));
		
		command.setTable("steelcut");
		command.setParam(param);
		listService=(x) ->{
			return mapper.selectSome(command);
		};
		map.put("steelcut", listService.excute(command));
		return map;
	}
	
	@RequestMapping(value="/get/loginPage",method=RequestMethod.POST)
	public @ResponseBody Map<?,?> getLoginPage(@RequestBody Map<String,Object> param){
		Map<String,Object> map=new HashMap<>();
		Map<String,Object> member=new HashMap<>();
		System.out.println("아이디 :"+param.get("member_id")+"비번 : "+param.get("pass"));
		command.setTable("login");
		command.setParam(param);
		getService=(x) ->{
			return mapper.selectOne(command);
		};
		String result="";
		
		member=(Map<String, Object>) getService.excute(command);
		System.out.println(member);
		
		if(getService.excute(command)==null) {
			result="fail";
		}else {
			result="success";
		}
		
		map.put("msg", result);
		map.put("member", member);
		return map;
	}
	
	@RequestMapping(value="/post/comment",method=RequestMethod.POST)
	public @ResponseBody Map<?,?> postComment(@RequestBody Map<String,Object> param){
		
		System.out.println("post comment 진입..");
		Map<String,Object> map=new HashMap<>();
		command.setTable("comment");
		command.setParam(param);
		postService=(x) ->{
			return mapper.insert(command);
		};
		String result="";
		
		
		if(postService.excute(command)==0) {
			result="fail";
		}else {
			result="success";
		}
		map.put("msg", result);
		return map;
	}
	@RequestMapping(value="/get/findId",method=RequestMethod.POST, consumes="application/json")
	   public @ResponseBody Map<?,?> getFindId(@RequestBody Map<String,Object> param){
	      Map<String,Object> map=new HashMap<>();
	      Map<String,Object> member=new HashMap<>();
	      command.setTable("findid");
	      command.setParam(param);
	      System.out.println(param.get("member_name"));
	      System.out.println(param.get("member_phone"));
	      getService=(x) ->{
	         return mapper.selectOne(command);
	      };
	      String result="";
	      member=(Map<String, Object>) getService.excute(command);
	      System.out.println(member);
	      if(member==null) {
	         result="fail";
	      }else {
	         result="success";
	      }
	      map.put("msg", result);
	      map.put("member_id", member.get("member_id"));
	      return map;
	   }
	   @RequestMapping(value="/get/findPw",method=RequestMethod.POST, consumes="application/json")
	   public @ResponseBody Map<?,?> getFindPw(@RequestBody Map<String,Object> param){
	      Map<String,Object> map=new HashMap<>();
	      Map<String,Object> member=new HashMap<>();
	      command.setTable("findpw");
	      command.setParam(param);      
	      System.out.println(param.get("member_id"));
	      System.out.println(param.get("member_phone"));
	      
	      getService=(x) ->{
	         
	         return mapper.selectOne(command);
	      };
	      String result="";
	      member=(Map<String, Object>) getService.excute(command);
	      System.out.println(member);
	      if(member==null) {
	         result="fail";
	      }else {
	         result="success";
	      }
	      map.put("msg", result);
	      map.put("findPw", member.get("pass"));
	      map.put("findId", member.get("member_id"));
	      return map;
	   }
	  
	   
	   @RequestMapping(value="/put/like",method=RequestMethod.POST, consumes="application/json")
	   public @ResponseBody Map<?,?> putLike(@RequestBody Map<String,Object> param){
	      Map<String,Object> map=new HashMap<>();
	      command.setTable("like");
	      command.setParam(param);
	      
	      putService=(x) ->{
	         return mapper.update(command);
	      };
	      String result="";
	      if(putService.excute(command)==0) {
	         result="fail";
	      }else {
	         result="success";
	      }
	      map.put("msg", result);
	      return map;
	   }
	   
	   @RequestMapping(value="/get/idCheck",method=RequestMethod.POST, consumes="application/json")
	   public @ResponseBody Map<?,?> idCheck(@RequestBody Map<String,Object> param){
	      Map<String,Object> map=new HashMap<>();
	      command.setTable("idCheck");
	      command.setParam(param);
	      getService=(x) ->{
	         return mapper.selectOne(command);
	      };
	      String result="";
	      if(getService.excute(command)==null) {
	         result="possible";
	      }else {
	         result="impossible";
	      }
	      map.put("msg", result);
	      map.put("member", getService.excute(command));
	      return map;
	   }
	   
	   @RequestMapping(value="/post/member",method=RequestMethod.POST)
		public @ResponseBody Map<?,?> postMember(@RequestBody Map<String,Object> param){
			
			Map<String,Object> map=new HashMap<>();
			command.setTable("member");
			command.setParam(param);
			postService=(x) ->{
				return mapper.insert(command);
			};
			String result="";
			
			if(postService.excute(command)==0) {
				result="fail";
			}else {
				result="success";
			}
			map.put("msg", result);
			return map;
		}
	   
	   @RequestMapping(value="/put/update",method=RequestMethod.POST)
		public @ResponseBody Map<?,?> postUpdate(@RequestBody Map<String,Object> param){
			
			Map<String,Object> map=new HashMap<>();
			command.setTable("update");
			command.setParam(param);
			putService=(x) ->{
				return mapper.update(command);
			};
			String result="";
			
			
			if(putService.excute(command)==0) {
				result="fail";
			}else {
				result="success";
			}
			map.put("msg", result);
			return map;
		}
	   
	   @RequestMapping(value="/get/myreservation",method=RequestMethod.POST)
		public @ResponseBody Map<?,?> getMyreservation(@RequestBody Map<String,Object> param){
			Map<String,Object> map=new HashMap<>();
			command.setTable("myreservation");
			command.setParam(param);
			listService=(x) ->{
				return mapper.selectSome(command);
			};
			map.put("myreservation", listService.excute(command));
			
			command.setTable("qna");
			command.setParam(param);
			listService=(x) ->{
				return mapper.selectSome(command);
			};
			map.put("qna", listService.excute(command));
			
			return map;
		}
	   
	   @RequestMapping(value="/put/qnaDelete",method=RequestMethod.POST)
		public @ResponseBody Map<?,?> putDelete(@RequestBody Map<String,Object> param){
			
			Map<String,Object> map=new HashMap<>();
			command.setTable("deleteQna");
			command.setParam(param);
			deleteService=(x) ->{
				return mapper.delete(command);
			};
			String result="";
			
			
			if(deleteService.excute(command)==0) {
				result="fail";
			}else {
				result="success";
			}
			map.put("msg", result);
			return map;
		}
	   
	   @RequestMapping(value="/post/qna",method=RequestMethod.POST)
		public @ResponseBody Map<?,?> postQna(@RequestBody Map<String,Object> param){
			Map<String,Object> map=new HashMap<>();
			command.setTable("qna");
			command.setParam(param);
			postService=(x) ->{
				return mapper.insert(command);
			};
			map.put("msg", postService.excute(command));
			return param;
		}
	   @RequestMapping(value="/put/movieLike",method=RequestMethod.POST, consumes="application/json")
	   public @ResponseBody Map<?,?> putMovieLike(@RequestBody Map<String,Object> param){
	      Map<String,Object> map=new HashMap<>();
	      command.setTable("movieLike");
	      command.setParam(param);
	      
	      putService=(x) ->{
	         return mapper.update(command);
	      };
	      String result="";
	      if(putService.excute(command)==0) {
	         result="fail";
	      }else {
	         result="success";
	      }
	      map.put("msg", result);
	      return map;
	   }
	   
	   @RequestMapping(value="/delete/member",method=RequestMethod.POST)
		public @ResponseBody Map<?,?> deleteMember(@RequestBody Map<String,Object> param){
			
			Map<String,Object> map=new HashMap<>();
			command.setTable("deleteMember");
			command.setParam(param);
			deleteService=(x) ->{
				return mapper.delete(command);
			};
			String result="";
			
			
			if(deleteService.excute(command)==0) {
				result="fail";
			}else {
				result="success";
			}
			map.put("msg", result);
			return map;
		}
}
