package cn.edu.abtu.crm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.edu.abtu.crm.pojo.BaseDict;
import cn.edu.abtu.crm.pojo.QuerySd;
import cn.edu.abtu.crm.pojo.Student;
import cn.edu.abtu.crm.service.BaseDictService;
import cn.edu.abtu.crm.service.IStudentService;

@Controller
@RequestMapping("student")
public class StudentController {
	@Autowired
	private BaseDictService dictService;
	@Autowired
	private IStudentService studentService;
	@Value("${customer_from_type}")
	private String customer_from_type;
	@Value("${customer_industry_type}")
	private String customer_industry_type;

	@RequestMapping("list")
	public String list(Model model, QuerySd sd) {
		// 查询政治面貌
		List<BaseDict> fromType = dictService.getBaseDictByCode(customer_from_type);
		// 查询专业
		List<BaseDict> industryType = dictService.getBaseDictByCode(customer_industry_type);
		// 设置数据模型返回
		model.addAttribute("fromType", fromType);
		model.addAttribute("industryType", industryType);
		// 根据查询条件分页查询用户列表
		List<Student> page = studentService.getStudentByQuerySd(sd);
		// 分页
		model.addAttribute("student", page);
		// 返回查询条件
		model.addAttribute("sd", sd);
		return "student";

	}

	@RequestMapping("/getStudentById")
	@ResponseBody
	public Student getStudentById(Integer id) {
		Student student = studentService.getStudentById(id);
		return student;
	}

	@RequestMapping("/updateStudent")
	@ResponseBody
	public String updateStudent(Student student) {
		String msg = "1";
		try {
			studentService.updateStudent(student);
			;
			msg = "0";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return msg;
	}

	@RequestMapping("/deleteStudent")
	@ResponseBody
	public String deleteStudent(Integer id) {
		String msg = "1";
		try {
			studentService.deleteStudent(id);
			msg = "0";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return msg;
	}

	@RequestMapping("/addStudent")
	@ResponseBody
	public String deleteStudent(Student student) {
		String msg = "1";
		try {

			studentService.addStudent(student);
			msg = "0";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return msg;
	}

	@RequestMapping("myTag")
	public String myTag() {
		return "myTag";
	}
}
