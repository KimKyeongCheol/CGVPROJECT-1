package com.hanbit.cgv.service;

import org.springframework.stereotype.Service;

@Service
@FunctionalInterface
public interface IGetService {
	public Object excute(Object o);
}
