package com.hanbit.cgv;



import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

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

	
	
	

