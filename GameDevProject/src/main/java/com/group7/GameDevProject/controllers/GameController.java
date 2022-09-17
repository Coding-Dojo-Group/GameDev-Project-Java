package com.group7.GameDevProject.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/games")
public class GameController {

	// Your Games section
	
	@GetMapping("")
	public String yourGames() {
		
		return "/games.jsp";
	}
	
	// New Game
	
	@GetMapping("/new")
	public String newGame() {
		
		
		return "/new.jsp";
	}
	
	// Edit Game
	
	@GetMapping("/edit")
	public String editGame() {
		
		return "/edit.jsp";
	}
	
	// Specific Game
	
	// Community Games
	
	@GetMapping("/community")
	public String community() {
		
		return "/community.jsp";
	}
	
}
