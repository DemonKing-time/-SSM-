package cn.edu.abtu.crm.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.abtu.crm.mapper.UserMapper;
import cn.edu.abtu.crm.pojo.User;
import cn.edu.abtu.crm.service.IUserService;

@Service
public class UserServiceImpl implements IUserService {

	@Autowired
	private UserMapper userMapper;
	@Override
	public User findUserByUserNameAndPassword(User user) {
		// TODO Auto-generated method stub
		return userMapper.findUserByUserNameAndPassword(user);
	}

}
