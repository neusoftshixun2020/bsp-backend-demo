package com.neusoft.bsp.user.controller;

import com.github.pagehelper.PageInfo;
import com.neusoft.bsp.common.base.BaseController;
import com.neusoft.bsp.common.base.BaseEntity;
import com.neusoft.bsp.common.base.BaseModel;
import com.neusoft.bsp.common.base.BaseModelJson;
import com.neusoft.bsp.common.exception.BusinessException;
import com.neusoft.bsp.common.validationGroup.InsertGroup;
import com.neusoft.bsp.common.validationGroup.UpdateGroup;
import com.neusoft.bsp.user.entity.User;
import com.neusoft.bsp.user.service.UserService;
import com.sun.org.apache.xpath.internal.operations.String;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@CrossOrigin
@RestController
@RequestMapping("/user")
public class UserController extends BaseController {

    @Autowired
    UserService userService;

    @PostMapping("/addUser")
    public BaseModel addUser(@Validated({InsertGroup.class}) @RequestBody User user, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            throw new BusinessException().INSERT_FAIL.newInstance("504", this.getErrorResponse(bindingResult), new Object[]{user.toString()});
        } else {
            BaseModel result = new BaseModel();
            int i = userService.insert(user);
            if (i == 1) {
                result.code = 200;
                return result;
            } else {
                throw BusinessException.INSERT_FAIL.newInstance("504", "Insert into database failed",new Object[]{user.toString()} );
            }
        }
    }


    @RequestMapping("/UserList")
    public BaseModelJson<PageInfo<User>> getAllByFilter(Integer pageNum, Integer pageSize, @RequestBody User user) {
        Map<String, Object> map = new HashMap<>();
        BaseModelJson<PageInfo<User>> result = new BaseModelJson<>();
        if (pageNum == null) {
            pageNum = 1;
        }
        if (pageSize == null) {
            pageSize = 10;
        }
        result.code = 200;
        result.data = userService.getAllByFilter(pageNum, pageSize, map);
        return result;
    }

    @RequestMapping("/UpdateUser")
    public BaseModel updateUser(@Validated({UpdateGroup.class}) @RequestBody User user, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            throw new BusinessException().UPDATE_FAIL.newInstance("504", this.getErrorResponse(bindingResult), new Object[]{user.toString()});
        } else {
            BaseModel result = new BaseModel();
            int i = userService.update(user);
            if (i == 1) {
                result.code = 200;
                return result;
            } else {
                throw BusinessException.UPDATE_FAIL;
            }
        }
    }


    @RequestMapping("/getInfo")
    public BaseModelJson<Map> getInfoForVue() {
        Map<String, Object> map = new HashMap<>();
        map.put("roles", new String[]{"admin-token"});
        map.put("introduction", "I am a super administrator");
        map.put("avatar", "https://wping.wallstcn.com/f778738c-04f8-4870-b634-56703b4acafe.gif");
        map.put("name", "Super admin");
        BaseModelJson<Map> result = new BaseModelJson<>();
        result.code = 200;
        result.data = map;
        return result;
    }
}
