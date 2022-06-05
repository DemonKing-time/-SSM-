package cn.edu.abtu.crm.pojo;

public class QuerySd {
	private String StudentNum;
	private String StudentName;
	private String StudentPolitic;
	private String StudentMajor;
	private Integer page = 1;
	private Integer start = 0;
	private Integer rows = 10;

	public String getStudentNum() {
		return StudentNum;
	}

	public void setStudentNum(String studentNum) {
		StudentNum = studentNum;
	}

	public String getStudentMajor() {
		return StudentMajor;
	}

	public void setStudentMajor(String studentMajor) {
		StudentMajor = studentMajor;
	}

	public String getStudentPolitic() {
		return StudentPolitic;
	}

	public void setStudentPolitic(String studentPolitic) {
		StudentPolitic = studentPolitic;
	}

	public String getStudentName() {
		return StudentName;
	}

	public void setStudentName(String studentName) {
		StudentName = studentName;
	}

	public Integer getPage() {
		return page;
	}

	public void setPage(Integer page) {
		this.page = page;
	}

	public Integer getStart() {
		return start;
	}

	public void setStart(Integer start) {
		this.start = start;
	}

	public Integer getRows() {
		return rows;
	}

	public void setRows(Integer rows) {
		this.rows = rows;
	}

}
