package com.hanbit.cgv;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.hanbit.cgv.command.Command;
import com.hanbit.cgv.mapper.Mapper;
import com.hanbit.cgv.service.IDeleteService;
import com.hanbit.cgv.service.IGetService;
import com.hanbit.cgv.service.IListService;
import com.hanbit.cgv.service.IPostService;
import com.hanbit.cgv.service.IPutService;
import com.hanbit.cgv.service.TransactionService;
import com.hanbit.cgv.util.FileUpload;


@org.springframework.web.bind.annotation.RestController
public class AjaxController {
	@Autowired Command command;
	@Autowired Mapper mapper;
	@Autowired FileUpload fileupload;
	@Autowired TransactionService tx;
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
       tx.reservation(param);
       map.put("reservation", "success");
       return map;
    }
	
	@RequestMapping(value="/get/movieChart",method=RequestMethod.POST)
	   public @ResponseBody Map<?,?> getMovieChart(@RequestBody Map<String,Object> param){
	      Map<String,Object> map=new HashMap<>();
	      command.setTable("movieChart");
	      command.setParam(param);
	      listService=(x) ->{
	         return mapper.selectSome(command);
	      };
	      map.clear();
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
	      
	      command.setTable("genderGraph");
	      command.setParam(param);
	      getService=(x) ->{
	         return mapper.selectOne(command);
	      };
	      map.put("genderGraph", getService.excute(command));
	      
	      command.setTable("ages");
	      command.setParam(param);
	      getService=(x) ->{
	         return mapper.selectOne(command);
	      };
	      map.put("ages", getService.excute(command));
	      
	      
	      command.setTable("charmpoint");
	      command.setParam(param);
	      getService=(x) ->{
	         return mapper.selectOne(command);
	      };
	      map.put("charmpoint", getService.excute(command));
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
	   
	      @SuppressWarnings("unchecked")
	      @RequestMapping(value="/post/reservation2", method=RequestMethod.POST)
	         public @ResponseBody Map<?,?> postReservation2(@RequestBody Map<String, Object> param) {
	             Map<String,Object> map = new HashMap<>();
	                System.out.println("액션은 셀렉트");
	                command.setTable("theater");
	               map.put("theater", new IListService() {
	                  
	                  @Override
	                  public List<?> excute(Object o) {
	                     return mapper.selectSome(command);
	                  }
	               }.excute(command));
	                
	               command.setTable("schedule");

	               map.put("schedule", new IListService() {
	                  
	                  @Override
	                  public List<?> excute(Object o) {
	                     return mapper.selectSome(command);
	                  }
	               }.excute(command));
	                
	                command.setTable("reservation2");
	                command.setParam(param);
	                Map<String, Object> temp = new HashMap<>();
	                temp.put("seat1", new IListService() {
	                  
	                  @Override
	                  public List<?> excute(Object o) {
	                     return mapper.selectSome(command);
	                  }
	               }.excute(command));
	                List<?> list = new ArrayList<>();
	                System.out.println("셀렉트 된 시트정보"+temp.get("seat1"));
	                String str1 = "";
	                String[] str2 = {"0"};
	                list = (List<?>) temp.get("seat1");
	                int count = 0;
	                Map<String, Object> map1 = new HashMap<>();
	                for (int i=0; i<list.size();i++) {
	                   map1 = (Map<String, Object>) list.get(i);
	                   str1 = (String) map1.get("seat");
	                   str2 = str1.split(",");
	                   for (int j=0;j<str2.length;j++) {
	                      //30개의 시트 배열로 나눈 정보
	                      System.out.println(str2[j]);
	                      if (str2[j].equals("0")) {
	                         count++;
	                      }
	                   }
	                   System.out.println("남는 시트 갯수는" + count);
	                   map.put("count", count);
	                   map.put("seatList1", str1);
	                   count = 0;
	                }
	             
	             
	             return map;
	         }
	   
	   @RequestMapping("/file/upload")
		@ResponseBody
		public String upload(@RequestParam(name="fileObj") MultipartFile file) throws Exception {
			Map map2 = fileupload.execute(file);
			System.out.println(map2);
			String picurl = (String)map2.get("saveName");
			System.out.println("picurl : "+picurl);
			command.setTable("updatePicture");
			command.setPicurl(picurl);
			putService=(x) ->{
				return mapper.update(command);
			};
			String result="";
			
			if(putService.excute(command)==0) {
				result="fail";
			}else {
				result="success";
			}
			System.out.println("picurl :"+picurl);
			return picurl;
		}

}
