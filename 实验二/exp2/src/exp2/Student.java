package exp2;

public class Student {
	public String num;
	public String name;
	public String sex;
	public String classroom;
	public double grade;
	public Student(String num, String name, String sex, String classroom, double grade) {
		super();
		this.num = num;
		this.name = name;
		this.sex = sex;
		this.classroom = classroom;
		this.grade = grade;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public double getGrade() {
		return grade;
	}
	public void setGrade(double grade) {
		this.grade = grade;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public void setClassroom(String classroom) {
		this.classroom = classroom;
	}
	public String getNum() {
		return num;
	}
	public String getClassroom() {
		return classroom;
	}

}
