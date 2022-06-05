package cn.edu.abtu.crm.mapper;

import java.util.List;

import cn.edu.abtu.crm.pojo.QuerySd;
import cn.edu.abtu.crm.pojo.Student;

public interface StudentMapper {
	List<Student> getStudentByQuerySd(QuerySd sd);

	// 根据查询条件查询总条数
	Integer getCountByQueryVo(QuerySd sd);

	// 根据ID查
	Student getStudentById(Integer id);

	// 更新用户信息
	void updateStudent(Student student);

	// 删除用户信息
	void deleteStudent(Integer id);

	// 添加用户信息
	void addStudent(Student student);

}
