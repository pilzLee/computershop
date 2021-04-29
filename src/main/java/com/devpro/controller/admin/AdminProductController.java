package com.devpro.controller.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.devpro.common.ProductSearch;
import com.devpro.entities.Product;
import com.devpro.repositories.CategoryRepo;
import com.devpro.repositories.ProductRepo;
import com.devpro.services.ProductService;

@Controller
public class AdminProductController {
	
	@Autowired CategoryRepo categoryRepo;
	@Autowired ProductService productService;
	@Autowired public ProductRepo productRepo;
	
//	@RequestMapping(value = "/api/product/findall", method = RequestMethod.POST)
//	public ResponseEntity<Iterable<Product>> findAllWithPost(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response) {
//		try {
//			return new ResponseEntity<Iterable<Product>>(productRepo.findAll(), HttpStatus.OK);
//		} catch (Exception e) {
//			return new ResponseEntity<Iterable<Product>>(HttpStatus.BAD_REQUEST);
//		}
//	}
	
//	@RequestMapping(value = "/api/product/findall", method = RequestMethod.GET)
//	public ResponseEntity<Iterable<Product>> findAll(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response) {
//		try {
//			return new ResponseEntity<Iterable<Product>>(productRepo.findAll(), HttpStatus.OK);
//		} catch (Exception e) {
//			return new ResponseEntity<Iterable<Product>>(HttpStatus.BAD_REQUEST);
//		}
//	}
	
	@RequestMapping(value = { "/admin/list-product" }, method = RequestMethod.GET)
	public String listProduct(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		model.addAttribute("products", productRepo.findAll());
		return "admin/product/list-product";
	}
	
	@RequestMapping(value = { "/admin/add-product" }, method = RequestMethod.GET)
	public String addProduct(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		model.addAttribute("categories", categoryRepo.findAll());
		model.addAttribute("product", new Product());
		return "admin/product/add-product";
	}
	
	@RequestMapping(value = { "/admin/edit-product/{seo}" }, method = RequestMethod.GET)
	public String editProduct(@PathVariable("seo") String seo, final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		model.addAttribute("categories", categoryRepo.findAll());
		
		ProductSearch productSearch = new ProductSearch();
		productSearch.setSeoProduct(seo);
		
		model.addAttribute("product", productService.search(productSearch).get(0));
		
		return "admin/product/add-product";
	}
	
	@RequestMapping(value = {"/admin/save-product"}, method = RequestMethod.POST)
	public String saveProduct(@RequestParam("productImage") MultipartFile[] productImage, @ModelAttribute("product") Product product,
			final ModelMap model, final HttpServletRequest request, final HttpServletResponse response) throws Exception {
		
		productService.saveProduct(productImage, product);

//		return "admin/product/add-product";
//		return listProduct(model, request, response);
		return "redirect:/admin/list-product";
	}
}
