package com.naresh.controller;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.gowthamvel.exception.PersistenceException;
import com.gowthamvel.exception.ServiceException;
import com.gowthamvel.model.User;
import com.gowthamvel.service.CreateTicketService;

@CrossOrigin
@RestController
@RequestMapping("/create")
public class CreateTicketController {
	CreateTicketService create = new CreateTicketService();
	User u = new User();

	@GetMapping("/ticket")
	public String create(@RequestParam("userId") long uid, @RequestParam("Type") String type,
			@RequestParam("Subject") String sub, @RequestParam("Description") String desc,
			@RequestParam("Priority") String prior) throws ServiceException, PersistenceException {
		try {
			create.saveService(uid, type, sub, desc, prior);
		} catch (ServiceException e) {
			e.printStackTrace();
		}
		return "successfull";

	}
}