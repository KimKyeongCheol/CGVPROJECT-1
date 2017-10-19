package com.hanbit.cgv.mapper;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.hanbit.cgv.command.Command;


@Repository
public interface Mapper {
	public int insert(Command cmd);
	public List<Map<?,?>> selectSome(Command cmd);
	public Map<?,?> selectOne(Command cmd);
	public int update(Command cmd);
	public void delete(Command cmd);
	public String count(Command cmd);
}
