package com.naresh.controller;

import java.util.List;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.gowthamvel.exception.ServiceException;
import com.gowthamvel.model.TicketTransaction;
import com.gowthamvel.model.User;
import com.gowthamvel.service.CreateTicketService;

@CrossOrigin
@RestController
@RequestMapping("/users")

public class UserController {

	CreateTicketService create = new CreateTicketService();
	User u = new User();

	@PostMapping("/register")
	public String register(@RequestParam("userName") String name, @RequestParam("password") String password,
			@RequestParam("emailId") String emailId) {
		// u.setName(name);
		// u.setEmailid(emailId);
		// u.setPassword(password);

		try {
			create.saveService(name, emailId, password);
		} catch (ServiceException e) {
			e.printStackTrace();
		}
		return "../Register.jsp";
	}

	@PutMapping("/ticketdetails")
	public List<TicketTransaction> details(@RequestParam("userId") long uid) throws ServiceException {

		CreateTicketService create = new CreateTicketService();
		List<TicketTransaction> i = create.saveService(uid);
		return i;

	}
}
