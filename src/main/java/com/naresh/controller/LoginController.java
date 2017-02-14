package com.naresh.controller;

import javax.servlet.http.HttpSession;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.gowthamvel.dao.EmployeeDAO;
import com.gowthamvel.dao.UserDAO;
import com.gowthamvel.model.Employee;
import com.gowthamvel.model.User;
import com.gowthamvel.validator.LoginValidator;

@RestController
@RequestMapping("/check")
public class LoginController {
	User u = new User();

	@PostMapping("/login")
	public String register(@RequestParam("password") String password, @RequestParam("emailId") String emailId,
			HttpSession session, ModelMap modelMap) throws Exception {
		UserDAO ud = new UserDAO();
		LoginValidator lv = new LoginValidator();
		lv.validateSave(emailId);
		lv.validateSave(password);
		User user = ud.findId(emailId);

		if (user != null && user.getPassword().equals(password)) {
			System.out.println("Valid User");
			session.setAttribute("LOGGED_IN_USER", user);
			return "../login.jsp";

		} else {
			modelMap.addAttribute("INVALID", "LOGIN FAILED");
			System.out.println("Invalid User");
			return "../Register.jsp";
		}
		/*
		 * long i = user.getId(); long j = ud.findIdbypass(password).getId();
		 * System.out.println(i + " " + j); try { LoginService ls = new
		 * LoginService(); ls.emPassMatch(i, j);
		 * session.setAttribute("LOGGED_IN_USER", arg1); } catch (Exception e) {
		 * e.printStackTrace();
		 * 
		 * }
		 */
	}

	@PostMapping("/emplogin")
	public String empregister(@RequestParam("password") String empPassword, @RequestParam("emailId") String empemailId,
			HttpSession session, ModelMap modelMap) throws Exception {
		EmployeeDAO ud = new EmployeeDAO();
		LoginValidator lv = new LoginValidator();
		lv.validateSave(empemailId);
		lv.validateSave(empPassword);
		System.out.println(ud.findId(empemailId));
		Employee employee = ud.findId(empemailId);
		System.out.println(employee.getPassword());
		if (employee != null && employee.getPassword().equals(empPassword)) {
			System.out.println("Valid Employee");
			session.setAttribute("LOGGED_IN_EMPLOYEE", employee);
			return "../assign.jsp";

		}

		else {
			modelMap.addAttribute("INVALID", "LOGIN FAILED");
			System.out.println("Invalid Employee");
			return "../employeeregister.jsp";
		}

	}

	@GetMapping("/logout")
	public String logout(HttpSession session) {
		System.out.println("Logout called");
		session.invalidate();
		return "redirect:/";
	}

}
