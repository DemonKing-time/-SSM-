package cn.edu.abtu.crm.mapper;

import cn.edu.abtu.crm.pojo.User;

public interface UserMapper {
	public User findUserByUserNameAndPassword(User user);
}
