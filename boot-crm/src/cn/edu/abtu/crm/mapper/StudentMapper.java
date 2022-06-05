package cn.edu.abtu.crm.mapper;

import java.util.List;

import cn.edu.abtu.crm.pojo.QuerySd;
import cn.edu.abtu.crm.pojo.Student;

public interface StudentMapper {
	List<Student> getStudentByQuerySd(QuerySd sd);

	// ���ݲ�ѯ������ѯ������
	Integer getCountByQueryVo(QuerySd sd);

	// ����ID��
	Student getStudentById(Integer id);

	// �����û���Ϣ
	void updateStudent(Student student);

	// ɾ���û���Ϣ
	void deleteStudent(Integer id);

	// ����û���Ϣ
	void addStudent(Student student);

}
