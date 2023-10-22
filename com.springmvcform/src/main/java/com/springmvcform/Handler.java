package com.springmvcform;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.springmvcform.service.EmployeeService;
import com.springmvcform.user.Employee;


@Controller
public class Handler {
	
	@Autowired
	private EmployeeService employeeservice;
	
	@RequestMapping(path="/handleform",method = RequestMethod.POST)
	public String handleform(@ModelAttribute Employee employee,BindingResult result,@RequestParam("file")CommonsMultipartFile file,HttpSession s,Model m) {

		if(result.hasErrors()) {
			m.addAttribute("msg","unwanted field value");
			return "home";
		}
		
		this.employeeservice.create(employee);
		
		byte[] data = file.getBytes();
		String add = "WEB-INF"+File.separator+"resources"+File.separator+"Files"+File.separator+file.getOriginalFilename();
		String path = s.getServletContext().getRealPath("/")+add;
		System.out.println(path);
		FileOutputStream fos;
		try {
			fos = new FileOutputStream(path);
			fos.write(data);
		}catch(IOException e) {
			e.printStackTrace();
			System.out.println("Uploading Error");
		}
		
		return "details";
	}
	
}

