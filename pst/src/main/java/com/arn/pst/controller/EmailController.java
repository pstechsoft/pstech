package com.arn.pst.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.arn.pst.handler.CheckoutHandler;
import com.arn.pst.model.CheckoutModel;
import com.arn.pstechbackend.dao.OrderDetailDAO;
import com.arn.pstechbackend.dto.OrderDetail;

@Controller
@RequestMapping("/email")
public class EmailController {

	@Autowired
	private JavaMailSender mailSender;
	@Autowired
	private OrderDetailDAO orderDetailDAO;
	@Autowired
	private CheckoutHandler checkoutHandler;
	
	
	//email Page 
	@GetMapping("/show")
	public ModelAndView mailform(/*@RequestParam("id") int id*/CheckoutModel checkoutModel) {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "PayForm");
		OrderDetail orderDetail = null;
    	/*orderDetail = orderDetailDAO.get(id);
    	mv.addObject("orderDetails", orderDetailDAO.listOrderDetails());
    	mv.addObject("orderDetail", orderDetail);*/
		mv.addObject("orderDetails" ,checkoutHandler.getOrderDetail(checkoutModel));
		mv.addObject("orderDetail", orderDetail);
		mv.addObject("userClickPayform", true);
		return mv;
	}
	
	@PostMapping(value="/sendEmail")
	public String saveContacts(@RequestParam("email") String email,
			@RequestParam("subject") String subject, @RequestParam("message") String message) {

		// Create a simple email object
		SimpleMailMessage simpleMessage = new SimpleMailMessage();
		simpleMessage.setFrom("PS TECH INFO <info.pstech24x7@gmail.com>");
		simpleMessage.setCc("info.pstech24x7@gmail.com");
		simpleMessage.setTo(email);
		simpleMessage.setSubject(subject);
		simpleMessage.setText(message);
		// send the email
		
		mailSender.send(simpleMessage);
	
		return "redirect:/home";
		//return "success";
	}
	
	/*@RequestMapping("/sendEmail")
	public String sendEmail(Model model){
		
		model.addAttribute( "email", new User());
		
		
		return "payform";
			
	}
	@RequestMapping("/process-email")
	public String processEmail(@ModelAttribute("emailDTO")User user){
		
		sendEmail(user.getEmail());
		return null;
		
	}
	private void sendEmail(String email) {
		// TODO Auto-generated method stub
		
	}*/
}
	
