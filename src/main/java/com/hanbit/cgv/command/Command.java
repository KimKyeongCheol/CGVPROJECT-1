package com.hanbit.cgv.command;


import java.util.Map;

import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Component;


import lombok.Data;


@Data @Component @Lazy
public class Command{
	protected String table,movieNum;
	protected Map<String,Object> param;
	
}