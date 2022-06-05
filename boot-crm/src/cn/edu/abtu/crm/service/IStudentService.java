package cn.edu.abtu.crm.service;

import java.util.List;

import cn.edu.abtu.crm.pojo.QuerySd;
import cn.edu.abtu.crm.pojo.Student;

public interface IStudentService {
	List<Student> getStudentByQuerySd(QuerySd sd);

	Student getStudentById(Integer id);

	// �����û���Ϣ
	void updateStudent(Student student);

	// ɾ��
	void deleteStudent(Integer id);

	// ���
	void addStudent(Student student);

}
