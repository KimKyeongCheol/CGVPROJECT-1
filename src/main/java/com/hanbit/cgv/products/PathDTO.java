package com.hanbit.cgv.products;

import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Component;

import lombok.Data;

@Component @Data @Lazy
public class PathDTO {
	private String img,js,css,ctx;
}
