package com.scs.aml.AML;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MainController {
	@Autowired
	AdminService adminService;

	@GetMapping("/")
	public String log() {
		return "login";
	}

	@GetMapping("/newadmin")
	public String newReg() {
		return "newadmin";
	}

	@PostMapping("/addadmin")
	public String addadmin(@ModelAttribute("admin") Admin admin, Model model) {
		adminService.newadmin(admin);
		List<Admin> ls1 = adminService.findall();
		model.addAttribute("ls", ls1);
		return "Alldata";
	}

	@RequestMapping(value = "/adminlogin", method = RequestMethod.POST)
	public String loginadmin(@RequestParam String username, String password, Model model) {
		List<Admin> ls = adminService.findadmin(username, password);
		System.out.println(username + "" + password);
		if (ls.isEmpty()) {
			System.out.println("its empty");
			model.addAttribute("flag", true);
			return "login";
		}
		List<Admin> ls1 = adminService.findall();
		model.addAttribute("ls", ls1);
		return "Alldata";
	}

	@GetMapping("/delete/{aid}")
	public String deleteAdminByAid(@PathVariable int aid, Model model) {
		adminService.deleteAdminByAid(aid);
		List<Admin> ls1 = adminService.findall();
		model.addAttribute("ls", ls1);
		return "Alldata";

	}
	@GetMapping("/edit/{aid}")
	public String editAdminForm(@PathVariable int aid, Model model) {
		model.addAttribute("ls", adminService.getAdminById(aid));
		return "Alldata";
	}
}
