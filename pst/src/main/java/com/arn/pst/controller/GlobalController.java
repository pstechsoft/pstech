package com.arn.pst.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.arn.pst.model.UserModel;
import com.arn.pstechbackend.dao.UserDAO;
import com.arn.pstechbackend.dto.User;

@ControllerAdvice
public class GlobalController {

	@Autowired
	private UserDAO userDAO;

	@Autowired
	private HttpSession session;

	private UserModel userModel = null;
	private User user = null;

	@ModelAttribute("userModel")
	public UserModel getUserModel() {
		if (session.getAttribute("userModel") == null) {
			// get the authentication object
			Authentication authentication = SecurityContextHolder.getContext().getAuthentication();

			if (!authentication.getPrincipal().equals("anonymousUser")) {
				// get the user from the database
				user = userDAO.getByEmail(authentication.getName());

				if (user != null) {
					// create a new UserModel details
					userModel = new UserModel();
					// set the name and the id
					userModel.setId(user.getId());
					userModel.setFullName(user.getFirstName() + " " + user.getLastName());
					userModel.setEmail(user.getEmail());
					userModel.setRole(user.getRole());

					if (user.getRole().equals("USER")) {
						// set the cart only if user is buyer
						userModel.setCart(user.getCart());
					}
					// set the UserModel in the Session
					session.setAttribute("userModel", userModel);
					return userModel;
				}
			}
		}

		return (UserModel) session.getAttribute("userModel");
	}
}
