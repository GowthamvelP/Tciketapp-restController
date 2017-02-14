package com.naresh.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.naresh.model.Course;

@Controller
@RequestMapping("/api/courses")
public class CourseRESTController {

	private List<Course> courseList = new ArrayList<Course>();

	@GetMapping
	public ResponseEntity<?> index(){

		System.out.println("Course->index");
		courseList.add(new Course(1,"Core Java"));
		courseList.add(new Course(2,"Spring"));
		return new ResponseEntity<>(courseList, HttpStatus.OK);
	}

	@GetMapping("/save")
	public void store(@RequestParam("id") String id, @RequestParam("name") String name){
		System.out.println("Course->save->id:" + id +",name:" + name);
		Course course = new Course();
		course.setId(Integer.valueOf(id));
		course.setName(name);
		courseList.add(course);
	}

	@GetMapping("/delete")
	public void delete(@RequestParam("id") Long id) {
		System.out.println("Course->delete->id:" + id);
		return ;
	}

}
