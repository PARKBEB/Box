package com.reactbackend.info;

import java.util.ArrayList;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class InfoController{

	ArrayList<String> user_list = new ArrayList<String>();
	
	@GetMapping("/users/get")
	public ArrayList<String> userGet(){
		
		System.out.print(user_list);
	
		return user_list;
	}
	
	@PostMapping("/users/post")
	public ArrayList<String> userPost(@RequestParam("id")String id,@RequestParam("name")String name,@RequestParam("team")String team) {
			
		user_list.add(id);
		user_list.add(name);
		user_list.add(team);
		
		System.out.print("아이디=" +id + "이름=" +name + "팀=" +team);
			
		return user_list;
	}
}