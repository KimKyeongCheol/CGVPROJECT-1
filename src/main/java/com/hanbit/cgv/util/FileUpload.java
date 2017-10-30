package com.hanbit.cgv.util;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import com.hanbit.cgv.complex.PathFactory;
import com.hanbit.cgv.products.PathDTO;
 
 

@Component
public class FileUpload {
	@Autowired
	ServletContext application;
	public HashMap execute(MultipartFile file) throws Exception {
		PathDTO path2=new PathDTO();
		path2=PathFactory.create();
		
		HashMap result = new HashMap<>();
		long size = file.getSize();
		result.put("filesize", size);
		String orgName = file.getOriginalFilename();
		result.put("filename",orgName);
		String path = application.getRealPath("/share");
		File dir = new java.io.File(path);
		if (!dir.exists())
			dir.mkdirs(); 
		String saveName = System.currentTimeMillis()+orgName;
		File dest = new File(path, saveName);
		file.transferTo(dest); 
		result.put("fileaddress", path2.getImg());
		result.put("filelink", path2.getImg()+"/"+saveName);
		return result;
	}

}


