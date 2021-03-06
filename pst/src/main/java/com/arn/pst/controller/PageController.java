package com.arn.pst.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.arn.pst.exception.ProductNotFoundException;
import com.arn.pst.model.UserModel;
/*import com.arn.pst.service.OrderItemService;*/
import com.arn.pstechbackend.dao.CategoryDAO;
import com.arn.pstechbackend.dao.OrderItemDAO;
import com.arn.pstechbackend.dao.ProductDAO;
import com.arn.pstechbackend.dto.Category;
import com.arn.pstechbackend.dto.Product;

@Controller
public class PageController {

	private static final Logger logger = LoggerFactory.getLogger(PageController.class);

	@Autowired
	private CategoryDAO categoryDAO;
	@Autowired
	private ProductDAO productDAO;
	@Autowired
	private OrderItemDAO orderItemDAO;
	/*@Autowired
	private OrderItemService orderItemService;*/
	@Autowired
	private HttpSession session;
	
	@RequestMapping(value = { "/", "/home", "/index" })
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Home");

		logger.info("Inside PageControler index method-INFO");
		logger.debug("Inside PageControler index method-DEBUG");

		// passing the list of categories
		mv.addObject("categories", categoryDAO.list());
		mv.addObject("products", productDAO.list());
		mv.addObject("userClickHome", true);
		return mv;
	}

	@RequestMapping(value = { "/cart" })
	public ModelAndView cart() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "My Cart");
		mv.addObject("userClickMyCart", true);
		return mv;
	}
	
	@RequestMapping(value = { "/about" })
	public ModelAndView about() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "About Us");
		mv.addObject("userClickAbout", true);
		return mv;
	}
	
	@RequestMapping(value = { "/payuform" })
	public ModelAndView payuform() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "PayUForm");
		mv.addObject("userClickPayuform", true);
		return mv;
	}

	
	 // Methods to load all products
	 
	@RequestMapping(value = "/show/all/products")
	public ModelAndView showAllProducts() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "All Products");

		// passing the list of category
		mv.addObject("categories", categoryDAO.list());
		mv.addObject("userClickAllProducts", true);
		return mv;
	}
	

	@RequestMapping(value = "/show/category/{id}/products")
	public ModelAndView showCategoryProducts(@PathVariable("id") int id) {
		ModelAndView mv = new ModelAndView("page");
		// categoryDao to fetch single category
		Category category = null;
		category = categoryDAO.get(id);
		mv.addObject("title", category.getName());
		// passing the list of category
		mv.addObject("categories", categoryDAO.list());
		// passing single category object
		mv.addObject("category", category);
		mv.addObject("userClickCategoryProducts", true);
		return mv;
	}
	

	@RequestMapping(value = { "/myorders" })
	public ModelAndView myorders() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "My Order");
		mv.addObject("orderItems", orderItemDAO.list(((UserModel) session.getAttribute("userModel")).getId()));
		mv.addObject("userClickMyOrders", true);
		return mv;
	}
		
	// Fetching a single product
	@RequestMapping(value = "/show/{id}/product")
	public ModelAndView showSingleProduct(@PathVariable int id) throws ProductNotFoundException {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("products", productDAO.list());

		Product product = productDAO.get(id);

		if (product == null)
			throw new ProductNotFoundException();

		// update the view count
		product.setViews(product.getViews() + 1);
		productDAO.update(product);
		
		mv.addObject("title", product.getName());
		mv.addObject("product", product);
		mv.addObject("userClickShowProduct", true);
		return mv;

	}


	 //Register Page 
	@RequestMapping(value = { "/register" })
	public ModelAndView register() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Register");
		return mv;
	}

	 //Login Page 
	@RequestMapping(value = "/login")
	public ModelAndView login(@RequestParam(name = "error", required = false) String error,
			@RequestParam(name = "logout", required = false) String logout) {
		ModelAndView mv = new ModelAndView("login");
		if (error != null) {
			mv.addObject("message", "Username and Password is invalid!");
		}
		if(logout!=null) {
			mv.addObject("logout", "You have logged out successfully!");
		}
		mv.addObject("title", "Login");
		return mv;
	}

	 //Logout Page 
	@RequestMapping(value = "/perform-logout")
	public String logout(HttpServletRequest request, HttpServletResponse response) {
		// Invalidates HTTP Session, then unbinds any objects bound to it.
		// Removes the authentication from securitycontext
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) {
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}
		return "redirect:/login?logout";
	}

	 //Access-Denied Page 
	@RequestMapping(value = "/access-denied")
	public ModelAndView accessDenied() {
		ModelAndView mv = new ModelAndView("error");
		mv.addObject("errorTitle", "<h2>Aha! Caught You!</h2>");
		mv.addObject("errorDescription", "You are not authorized to view this page!");
		mv.addObject("title", "403 Access Denied");
		return mv;
	}

}
