package com.devpro.controller.users;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.entities.AjaxResponse;
import com.devpro.entities.Contact;

@Controller
public class ContactController extends BaseController {
	@RequestMapping(value = { "/contact" }, method = RequestMethod.GET)
	public String index(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		model.addAttribute("contact", new Contact());
		return "users/UserContact";
	}
	
	@RequestMapping(value = { "/contact" }, method = RequestMethod.POST)
	public String saveContact(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response,
							  @ModelAttribute("contact") Contact contact)
			throws IOException {
		System.out.println("First Name is: " + contact.getFirstName());
		model.addAttribute("message", "Đã lưu thành công!");
		
		model.addAttribute("contact", new Contact());
		return "users/UserContact";
	}
	
	@RequestMapping(value = { "/save-contact-with-ajax" }, method = RequestMethod.POST)
	public ResponseEntity<AjaxResponse> saveWithAjax(@RequestBody Contact data
			,final ModelMap model, final HttpServletRequest request, final HttpServletResponse response) {
		String firstName = String.valueOf(data.getFirstName());
		System.out.println(firstName);
		return ResponseEntity.ok(new AjaxResponse(500, data));
	}
}
