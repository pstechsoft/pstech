/*package com.arn.pst.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.arn.pst.model.PaymentCallback;
import com.arn.pst.model.PaymentDetail;
import com.arn.pst.service.PaymentService;
import com.arn.pst.util.PaymentMode;

@Controller
@RequestMapping("/payment")
public class PaymentController {

	@Autowired
	@Qualifier("paymentService")
	private PaymentService paymentService;

	@GetMapping
	public ModelAndView viewPaymentPage() {
		ModelAndView model = new ModelAndView();
		model.setViewName("paymentview");
		return model;
	}

	@PostMapping(path = "/payment-details")
	public @ResponseBody PaymentDetail proceedPayment(@RequestBody PaymentDetail paymentDetail) {
		return paymentService.proceedPayment(paymentDetail);
	}

	@RequestMapping(path = "/payment-response", method = RequestMethod.POST)
	public @ResponseBody String payuCallback(@RequestParam String mihpayid, @RequestParam String status,
			@RequestParam PaymentMode mode, @RequestParam String txnid, @RequestParam String hash) {
		PaymentCallback paymentCallback = new PaymentCallback();
		paymentCallback.setMihpayid(mihpayid);
		paymentCallback.setTxnid(txnid);
		paymentCallback.setMode(mode);
		paymentCallback.setHash(hash);
		paymentCallback.setStatus(status);
		return paymentService.payuCallback(paymentCallback);
	}
}
*/