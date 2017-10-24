package com.hanbit.cgv.service;

import org.springframework.stereotype.Service;

@Service
@FunctionalInterface
public interface IDeleteService {
	public int excute(Object o);
}
