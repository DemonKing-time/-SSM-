package cn.edu.abtu.crm.service;

import cn.edu.abtu.crm.pojo.User;

public interface IUserService {
	public User findUserByUserNameAndPassword(User user);
}
