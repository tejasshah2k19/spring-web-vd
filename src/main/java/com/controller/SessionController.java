package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.bean.UserBean;

@Controller
public class SessionController {

	@Autowired
	JdbcTemplate stmt;

	@GetMapping("/signup") // url => browser
	public String signup() {

		return "Signup";// jsp name
	}

	@GetMapping("/login")
	public String login() {
		return "Login";
	}

	@PostMapping("/saveuser")
	public String saveUser(UserBean user) {
		// fn em ps

		stmt.update("insert into users (firstName,email,password) values (?,?,?)", user.getFirstName(), user.getEmail(),
				user.getPassword());

		System.out.println(user.getFirstName());
		System.out.println(user.getEmail());
		System.out.println(user.getPassword());
		return "Login";// jsp
	}

	@GetMapping("/listuser")
	public String listUser(Model model) {

		// query -> read
		List<UserBean> users = stmt.query("select * from users", new BeanPropertyRowMapper<UserBean>(UserBean.class));
		model.addAttribute("users",users);
		return "ListUser";
	}

}

//extends HttpServlet 
//service logic ->
//webServlet 
