package cn.edu.abtu.crm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.abtu.crm.mapper.StudentMapper;
import cn.edu.abtu.crm.pojo.QuerySd;
import cn.edu.abtu.crm.pojo.Student;
import cn.edu.abtu.crm.service.IStudentService;

@Service
public class StudentServiceImpl implements IStudentService {

	@Autowired
	private StudentMapper studentMapper;

	@Override
	public List<Student> getStudentByQuerySd(QuerySd sd) {
		List<Student> list = studentMapper.getStudentByQuerySd(sd);
		// TODO Auto-generated method stub
		return list;
	}

	@Override
	public Student getStudentById(Integer id) {
		// TODO Auto-generated method stub
		return studentMapper.getStudentById(id);
	}

	@Override
	public void updateStudent(Student student) {
		// TODO Auto-generated method stub
		studentMapper.updateStudent(student);
	}

	@Override
	public void deleteStudent(Integer id) {
		// TODO Auto-generated method stub
		studentMapper.deleteStudent(id);
	}

	@Override
	public void addStudent(Student student) {
		// TODO Auto-generated method stub
		studentMapper.addStudent(student);
	}
}
