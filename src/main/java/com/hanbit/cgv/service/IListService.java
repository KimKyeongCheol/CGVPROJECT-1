package com.hanbit.cgv.service;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
@FunctionalInterface
public interface IListService {
	public List<?> excute(Object o);
}
