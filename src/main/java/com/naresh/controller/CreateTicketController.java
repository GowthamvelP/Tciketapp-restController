package com.naresh.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gowthamvel.exception.PersistenceException;
import com.gowthamvel.exception.ServiceException;
import com.gowthamvel.model.User;
import com.gowthamvel.service.CreateTicketService;
import com.gowthamvel.service.LoginService;

@Controller
@RequestMapping("/create")
public class CreateTicketController {
	CreateTicketService create = new CreateTicketService();
	User u = new User();

	@GetMapping("/ticket")
	public void create(@RequestParam("userId") long uid, @RequestParam("Type") String type,
			@RequestParam("Subject") String sub, @RequestParam("Description") String desc,
			@RequestParam("Priority") String prior) throws ServiceException, PersistenceException {
		try {
		
			create.saveService(uid, type, sub, desc, prior);
		}catch (ServiceException e) {
			e.printStackTrace();
		}

	}
}