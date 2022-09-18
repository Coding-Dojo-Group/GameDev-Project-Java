package com.group7.GameDevProject.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.group7.GameDevProject.models.Comment;
import com.group7.GameDevProject.repositories.CommentRepository;

@Service
public class CommentService {
	
	@Autowired
	private CommentRepository commentRepo;
	
	public Comment createComment(Comment comment) {
		return commentRepo.save(comment);
	}
	
	public List<Comment> allComments(){
		return commentRepo.findAll();
	}
	
	public Comment findComment(Long id) {
		Optional<Comment> optionalComment = commentRepo.findById(id);
		if(optionalComment.isPresent()) {
			return optionalComment.get();
		}
		else {
			return null;
		}
	}
	
	public Comment updateComment(Comment comment) {
		return commentRepo.save(comment);
	}
	
	public void deleteComment(Long id) {
		Optional<Comment> optionalComment=commentRepo.findById(id);
		if(optionalComment.isPresent()) {
			commentRepo.deleteById(id);
		}
	}
	
}
