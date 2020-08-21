package com.arn.pst.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.arn.pst.exception.ProductNotFoundException;
import com.arn.pst.service.UserService;



@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @GetMapping("/delete")
    public String deleteAddress(@RequestParam("addressId") int addressId) {
        userService.deleteAddress(addressId);
        return "redirect:/cart/checkout";
    }
}
