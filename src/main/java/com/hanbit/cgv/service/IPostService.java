package com.hanbit.cgv.service;

import org.springframework.stereotype.Service;

@Service
@FunctionalInterface
public interface IPostService {
	public String excute(Object o);
}
