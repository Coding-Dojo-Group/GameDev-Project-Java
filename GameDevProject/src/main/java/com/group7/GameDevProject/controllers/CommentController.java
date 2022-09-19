package com.group7.GameDevProject.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.group7.GameDevProject.models.Comment;
import com.group7.GameDevProject.services.CommentService;
import com.group7.GameDevProject.services.GameService;
import com.group7.GameDevProject.services.UserService;

@Controller
public class CommentController {
	
	@Autowired
	private CommentService commentServ;
	
	@Autowired
	private GameService gServ;
	
	@Autowired
	private UserService userServ;
	
	//create new comment
	@PostMapping("/games/{game_id}/addcomment")
	public String addComment(@Valid @ModelAttribute("newComment") Comment newComment, BindingResult result,Model model, @PathVariable("game_id")Long game_id, HttpSession session) {
		if(result.hasErrors()) {
			model.addAttribute("game",gServ.findById(game_id));
			return "show.jsp";
		}
		commentServ.createComment(newComment);
		return "redirect:/games/view/{game_id}";
	}
	//edit comment
	
	//delete comment

}
