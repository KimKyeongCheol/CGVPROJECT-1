package com.hanbit.cgv;



import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.hanbit.cgv.complex.PathFactory;

@Controller
@SessionAttributes("path")
public class MoveController {
	
	private static final Logger logger = LoggerFactory.getLogger(MoveController.class);
	
	@RequestMapping("/")
	public String index(Model model) {
		logger.info("welcome ....");
		model.addAttribute("path",PathFactory.create());
		return "home";
	}
	
	@RequestMapping("/{page}")
	public String pageMove(Model model,@PathVariable String page) {
		System.out.println("page is "+page);
		
		return page;
	}
	
	
	
}
