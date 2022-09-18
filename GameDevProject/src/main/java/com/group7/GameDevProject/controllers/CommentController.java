package com.group7.GameDevProject.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.DeleteMapping;

import com.group7.GameDevProject.models.Comment;
import com.group7.GameDevProject.services.CommentService;

@Controller
public class CommentController {
	
	@Autowired
	private CommentService commentServ;
	
	//create new comment

	//delete comment
}
