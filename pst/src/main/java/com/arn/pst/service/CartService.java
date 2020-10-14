package com.arn.pst.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.arn.pst.model.UserModel;
import com.arn.pstechbackend.dao.CartLineDAO;
import com.arn.pstechbackend.dao.ProductDAO;
/*import com.arn.pstechbackend.dao.UserDAO;*/
import com.arn.pstechbackend.dto.Cart;
import com.arn.pstechbackend.dto.CartLine;
import com.arn.pstechbackend.dto.Product;

@Service("cartService")
public class CartService {

	@Autowired
	private CartLineDAO cartLineDAO;

	@Autowired
	private ProductDAO productDAO;

	@Autowired
	private HttpSession session;


	// Return the entire cartline
	public List<CartLine> getCartLines() {

		return cartLineDAO.list(this.getCart().getId());

	}

	// To update the cartLine
	public String manageCartLine(int cartLineId, int count) {

		CartLine cartLine = cartLineDAO.get(cartLineId);

		/*
		 * if (cartLine == null) { return "result= error"; } else {
		 */
		Product product = cartLine.getProduct();
		double oldTotal = cartLine.getTotal();

		// check if product is available
		if (product.getQuantity() < count) {
			return "result=unavailable";
		}

		// update the cartLine
		cartLine.setProductCount(count);
		cartLine.setBuyingPrice(product.getUnitPrice());
		cartLine.setTax(product.getTax() * count);
		cartLine.setTotal((product.getUnitPrice() * count) + cartLine.getTax());
		cartLine.setSubTotal((product.getUnitPrice() * count));
		cartLineDAO.update(cartLine);

		// update the cart
		Cart cart = this.getCart();
		cart.setGrandTotal((cart.getGrandTotal() - oldTotal + cartLine.getTotal()));
		cartLineDAO.updateCart(cart);

		return "result=updated";
	}
	/* } */
	
	// Return the cart of the user who has logged in
	private Cart getCart() {

		return ((UserModel) session.getAttribute("userModel")).getCart();

	}

	// To delete the cartLine
	public String deleteCartLine(int cartLineId) {

		// fetch the cartLine
		CartLine cartLine = cartLineDAO.get(cartLineId);
		/*
		 * if (cartLine == null) { return "result= error"; } else {
		 */

		// update the cart
		Cart cart = this.getCart();
		cart.setGrandTotal((cart.getGrandTotal() - cartLine.getTotal()));
		cart.setCartLines(cart.getCartLines() - 1);
		cartLineDAO.updateCart(cart);

		// remove the cartLine cartLineDAO.remove(cartLine);
		cartLineDAO.delete(cartLine);
		return "result=deleted";
	}

	/* } */

	// To add the cartLine
	public String addCartLine(int productId) {

		String response = null;
		Cart cart = this.getCart();
		CartLine cartLine = cartLineDAO.getByCartAndProduct(cart.getId(), productId);
		if (cartLine == null) {
			// add a new cartLine if a new product is getting added
			cartLine = new CartLine();
			// fetch the product
			Product product = productDAO.get(productId);
			// transfer the product details to cartLine
			cartLine.setCartId(cart.getId());
			cartLine.setProduct(product);
			cartLine.setProductCount(1);
			cartLine.setBuyingPrice(product.getUnitPrice());
			cartLine.setTax(cartLine.getProductCount() * product.getTax());
			cartLine.setTotal(product.getUnitPrice() + cartLine.getTax());
			cartLine.setSubTotal(product.getUnitPrice());
			/*cartLine.setAvailable(true);*/

			// insert a new cartLine
			cartLineDAO.add(cartLine);

			// update the cart
			cart.setGrandTotal((cart.getGrandTotal() + cartLine.getTotal()));
			cart.setCartLines(cart.getCartLines() + 1);
			cartLineDAO.updateCart(cart);
			response = "result=added";
		}

		else {
			// check if the cartLine has been already reached to maximum count
			if (cartLine.getProductCount() < 3) {
				// call the manageCartLine method to increase the count
				response = this.manageCartLine(cartLine.getId(), cartLine.getProductCount() + 1);
			} else {
				response = "result=maximum";
			}
		}
		return response;
	}
	

	public String validateCartLine() {
		Cart cart = this.getCart();
		List<CartLine> cartLines = cartLineDAO.list(cart.getId());
		double grandTotal = 0.0;
		int lineCount = 0;
		String response = "result=success";
		boolean changed = false;
		Product product = null;
		for(CartLine cartLine : cartLines) {					
			product = cartLine.getProduct();
			changed = false;
			// check if the product is active or not
			// if it is not active make the availability of cartLine as false
			if(!(product.isActive() && product.getQuantity() != 0) && cartLine.isAvailable()) {
				cartLine.setAvailable(false);
				changed = true;
			}
			// check if the cartLine is not available
			// check whether the product is active and has at least one quantity available
			if ((product.isActive() && product.getQuantity() > 0) && !(cartLine.isAvailable())) {
				cartLine.setAvailable(true);
				changed = true;
			}

			// check if the buying price of product has been changed
			if (cartLine.getBuyingPrice() != product.getUnitPrice()) {
				// set the buying price to the new price
				cartLine.setBuyingPrice(product.getUnitPrice());
				// calculate and set the new total
				cartLine.setTotal((cartLine.getProductCount() * product.getUnitPrice()));
				changed = true;
			}

			// check if that much quantity of product is available or not
			if (cartLine.getProductCount() > product.getQuantity()) {
				cartLine.setProductCount(product.getQuantity());
				cartLine.setTotal((cartLine.getProductCount() * product.getUnitPrice()));
				changed = true;

			}

			// changes has happened
			if (changed) {
				// update the cartLine
				cartLineDAO.update(cartLine);
				// set the result as modified
				response = "result=modified";
			}

			grandTotal += cartLine.getTotal();
			lineCount++;
		}

		cart.setCartLines(lineCount++);
		cart.setGrandTotal(grandTotal);
		cartLineDAO.updateCart(cart);

		return response;
	}
}