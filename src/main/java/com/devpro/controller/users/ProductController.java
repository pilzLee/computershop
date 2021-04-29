package com.devpro.controller.users;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.common.ProductSearch;
import com.devpro.services.ProductService;

@Controller
public class ProductController extends BaseController {
	
	@Autowired ProductService productService;
	
	@RequestMapping(value = { "/product/details/{seo}" }, method = RequestMethod.GET)
	public String index(@PathVariable("seo") String seo, final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		ProductSearch productSearch = new ProductSearch();
		productSearch.setSeoProduct(seo);
		
		model.addAttribute("product", productService.search(productSearch).get(0));
		return "users/UserProductDetails";
	}
	
}

