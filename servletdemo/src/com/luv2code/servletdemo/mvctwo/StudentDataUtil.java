package com.luv2code.servletdemo.mvctwo;

import java.util.ArrayList;
import java.util.List;

public class StudentDataUtil {

	public static List<Student> getStudents() {
		// create empty list
		List<Student> students = new ArrayList<>();
		// add sample data
		students.add(new Student("Mary", "Public", "mary@luv2code.com"));
		students.add(new Student("John", "Doe", "john@luv2code.com"));
		students.add(new Student("Maxwell", "Johnson", "maxwell@luv2code.com"));
		// return the list of students
		return students;
	}
	
}
