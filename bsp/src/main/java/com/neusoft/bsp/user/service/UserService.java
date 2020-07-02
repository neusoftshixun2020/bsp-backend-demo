package com.neusoft.bsp.user.service;

import com.github.pagehelper.PageInfo;
import com.neusoft.bsp.user.entity.User;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;


public interface UserService {

    int insert(User user);

    int update(User user);

    int delete(String pk);

    User getById(String userid);

    List<User> getAllByFilter(Map<String, Object> map);

    List<User> getAll();

    PageInfo<User> getAllByFilter(Integer pageNum, Integer pagesize, Map<String, Object> map);
}
