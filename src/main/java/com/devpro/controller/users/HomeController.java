package com.devpro.controller.users;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.common.ProductSearch;
import com.devpro.repositories.ProductRepo;
import com.devpro.services.ProductService;

@Controller
public class HomeController extends BaseController {
	
	@Autowired ProductService productService;
	
	@RequestMapping(value = { "/home", "/index", "/" }, method = RequestMethod.GET)
	public String index(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		ProductSearch productSearch = new ProductSearch();
		productSearch.parseRequest(request);
		
		model.addAttribute("products", productService.search(productSearch));
		return "users/UserHome";
	}
	
}
