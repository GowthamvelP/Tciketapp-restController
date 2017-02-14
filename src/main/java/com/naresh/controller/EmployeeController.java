package com.naresh.controller;

import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.gowthamvel.exception.ServiceException;
import com.gowthamvel.model.Department;
import com.gowthamvel.model.ERole;
import com.gowthamvel.model.Employee;
import com.gowthamvel.model.EmployeeTicket;
import com.gowthamvel.service.AssignEmployeeService;
import com.gowthamvel.service.EmployeeService;

@RestController
@RequestMapping("/employee")
public class EmployeeController {
	Employee u = new Employee();
	EmployeeService es = new EmployeeService();

	@GetMapping("/register")
	public String register(@RequestParam("roleId") long rid, @RequestParam("deptId") long did,
			@RequestParam("empName") String name, @RequestParam("password") String password,
			@RequestParam("emailId") String emailId) throws ServiceException {
		try {
			ERole er = new ERole();
			er.setId(1);
			Department d = new Department();
			d.setId(1);
			u.setRoleId(er);
			u.setDeptId(d);
			u.setName(name);
			u.setEmailid(emailId);
			u.setPassword(password);
			es.saveService(u);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "../assign.jsp";
	}

	@GetMapping("/assign")

	public String assign(@RequestParam("transId") long tid, @RequestParam("userId") long uid,
			@RequestParam("empId") long eid, @RequestParam("reply") String reply, @RequestParam("state") String state)
			throws ServiceException {
		try {
			AssignEmployeeService aes = new AssignEmployeeService();
			aes.saveService(uid, tid, eid, reply, state);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return "../assign.jsp";
	}

	@GetMapping("/solution")

	public String resolve(@RequestParam("userId") long uid, @RequestParam("ticketId") long tid,
			@RequestParam("solution") String soln, @RequestParam("status") String state) throws ServiceException {
		try {
			AssignEmployeeService aes = new AssignEmployeeService();
			aes.saveService(uid, tid, state, soln);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return "../assign.jsp";
	}

	@GetMapping("/reassign")

	public String reassign(@RequestParam("transId") long tid, @RequestParam("userId") long uid,
			@RequestParam("empId") long eid, @RequestParam("reply") String reply, @RequestParam("state") String state)
			throws ServiceException {
		try {
			AssignEmployeeService aes = new AssignEmployeeService();
			aes.saveService(uid, tid, eid, reply, state);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return "../employeeregister.jsp";
	}

	@GetMapping("/adminDelete")
	public String admin(@RequestParam("tid") long id) {
		try {
			AssignEmployeeService aes = new AssignEmployeeService();
			aes.saveService(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "../assign.jsp";

	}

	@PutMapping("/ticketdetails")
	public List<EmployeeTicket> details(@RequestParam("empId") long eid, @RequestParam("userId") long uid)
			throws Exception {

		AssignEmployeeService create = new AssignEmployeeService();
		List<EmployeeTicket> i = create.saveService(eid, uid);
		return i;

	}

}