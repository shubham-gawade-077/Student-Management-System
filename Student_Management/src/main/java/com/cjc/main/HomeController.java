package com.cjc.main;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cjc.main.model.Admin;
import com.cjc.main.model.Student;
import com.cjc.main.service.HomeServiceI;
import com.cjc.main.serviceImp.HomeServiceImp;

@Controller
public class HomeController {
	@Autowired
	HomeServiceI hs;
	
@RequestMapping("/")
	public String preLogin()
	{
	return "home";
	}
@RequestMapping("/cjc")
	public String cjc()
	{
	return "cjc";
	}
@RequestMapping("/aboutus")
public String aboutUs()
{
	return "aboutus";
}
@RequestMapping("/contact")
public String conmtact()
{
	return "contact";
}
@RequestMapping("/login")
public String login()
{
	
	return "login";
}
@RequestMapping("/adminregistration")
public String adminreg()
{
	
	return "adminregistration";
}
@RequestMapping("/register")
public String regi(@ModelAttribute Admin a)
{
	hs.save(a);
	return "home";
}


@RequestMapping("/login_admin")
public String adminPanel(@RequestParam("username")String un,@RequestParam("password")String ps)

{
	if(un.equals("admin") && ps.equals("123")) {
	hs.adminPanel(un,ps);
	
	return "adminpanel";
	}
	else
	{
		return "login";
	}
}

@RequestMapping("/addstudent")
public String saveStudent(@ModelAttribute Student st)
{
	hs.saveStudent(st);
	return "addstudent";
}
@RequestMapping("/savestudent")
public String addStudent(@ModelAttribute Student st)
{
	hs.addStudent(st);
	return "adminpanel";
}
@RequestMapping("/viewstudent")
public String viewStudent(@ModelAttribute Student st,Model m)
{
	hs.viewStudent(st);
	Iterable List=hs.displayAllData();
	m.addAttribute("data", List);

	return "viewstudent";
}
@RequestMapping("/edit")
public String editData(@RequestParam int sid,Model m)
{
	Student s = hs.getEditRecord(sid);
	m.addAttribute("data",s);
	return "addstudent";
}

@RequestMapping("/update")
public String updateData(@ModelAttribute Student s,Model m)
{
	hs.updateRecord(s);
	Iterable List=hs.displayAllData();
	m.addAttribute("data", List);
	return "viewstudent";
}
@RequestMapping("/delete")
public String deleteData(@RequestParam int sid,Model m)
{
	hs.deleteData(sid);
	Iterable List=hs.displayAllData();
	m.addAttribute("data", List);

	return "viewstudent";
}



}
