package cn.edu.abtu.crm.service;

import java.util.List;

import cn.edu.abtu.crm.pojo.QuerySd;
import cn.edu.abtu.crm.pojo.Student;

public interface IStudentService {
	List<Student> getStudentByQuerySd(QuerySd sd);

	Student getStudentById(Integer id);

	// 更新用户信息
	void updateStudent(Student student);

	// 删除
	void deleteStudent(Integer id);

	// 添加
	void addStudent(Student student);

}
