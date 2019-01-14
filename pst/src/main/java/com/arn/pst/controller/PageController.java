package com.arn.pst.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.arn.pstechbackend.dao.CategoryDAO;
import com.arn.pstechbackend.dto.Category;

@Controller
public class PageController {
	
	@Autowired
	private CategoryDAO categoryDAO;

	@RequestMapping(value = { "/", "/home", "/index" })
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title","Home");
		
		//passing the list of categories
		mv.addObject("categories",categoryDAO.list());
		
		mv.addObject("userClickHome",true);
		return mv;
	}
	@RequestMapping(value = { "/cart" })
	public ModelAndView cart() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title","My Cart");
		mv.addObject("userClickMyCart",true);
		return mv;
	}
	@RequestMapping(value = { "/about" })
	public ModelAndView about() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title","About Us");
		mv.addObject("userClickAbout",true);
		return mv;
	}
	@RequestMapping(value = "/show/category/{id}/products")
	public ModelAndView showCategoryProducts(@PathVariable("id")int id) {
		ModelAndView mv = new ModelAndView("page");	
		//categoryDao to fetch single category
		Category category=null;
		category=categoryDAO.get(id);	
		mv.addObject("title", category.getName());	
		//passing the list of category
		mv.addObject("categories",categoryDAO.list());	
		//passing single category object
		mv.addObject("category",category);	
		mv.addObject("userClickCategoryProducts", true);		
		return mv;
	}
	@RequestMapping(value = { "/myaccount" })
	public ModelAndView myaccount() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title","My Account");
		mv.addObject("userClickMyAccount",true);
		return mv;
	}

}
