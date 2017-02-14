package com.naresh.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gowthamvel.exception.ServiceException;
import com.gowthamvel.service.UserDescUpdateDAOService;

@Controller
@RequestMapping("/update")
public class UpdateDescriptionController {
	UserDescUpdateDAOService us = new UserDescUpdateDAOService();

	@GetMapping("/description")
	public String updateDesc(@RequestParam("userId") long uId, @RequestParam("ticketId") long tId,
			@RequestParam("Description") String desc) {

		try {
			us.descService(tId, uId, desc);

		} catch (ServiceException e) {
			e.printStackTrace();
		}
		return "../changedescription.jsp";
	}

	@GetMapping("/status")
	public String update(@RequestParam("userId") long uId, @RequestParam("ticketId") long tId,
			@RequestParam("status") String state) {

		try {
			us.updateService(tId, uId, state);
		} catch (ServiceException e) {
			e.printStackTrace();
		}
		return "../changedescription.jsp";

	}
}
