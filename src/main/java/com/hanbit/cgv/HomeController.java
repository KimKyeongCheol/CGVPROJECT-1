package com.hanbit.cgv;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.hanbit.cgv.complex.PathFactory;

@Controller
@SessionAttributes("path")
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping("/")
	public String index(Model model) {
		logger.info("welcome home....");
		model.addAttribute("path",PathFactory.create());
		return "movieDetail";
	}
	
	@RequestMapping("/movieChart")
	public String movieChart(Model model) {
		logger.info("welcome movieChart....");
		return "movieChart";
	}
	
	@RequestMapping("/reservation")
	public String reservation(Model model) {
		logger.info("welcome reservation....");
		return "reservation";
	}
	
	@RequestMapping("/admin")
	public String admin(Model model) {
		logger.info("welcome admin....");
		return "admin";
	}
	
	@RequestMapping("/mypage")
	public String mypage(Model model) {
		logger.info("welcome mypage....");
		return "mypage";
	}
	
	@RequestMapping("/join")
	public String join(Model model) {
		logger.info("welcome join....");
		return "join";
	}
	
	
	
}
