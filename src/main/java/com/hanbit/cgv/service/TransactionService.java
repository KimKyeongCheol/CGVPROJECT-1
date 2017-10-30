package com.hanbit.cgv.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestBody;

import com.hanbit.cgv.command.Command;
import com.hanbit.cgv.mapper.Mapper;

@Transactional
@Service
public class TransactionService {
   @Autowired Command command;
   @Autowired Mapper mapper;
   public void reservation(@RequestBody Map<String, Object> param) {
        command.setTable("reservation");
        command.setParam(param);
        mapper.insert(command);
         command.setTable("apply");
         command.setParam(param);
         mapper.update(command);
   }
}