package com.group7.GameDevProject.models;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;

@Entity
@Table(name="comment")
public class Comment {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@NotEmpty
	private String content;
	
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="user_id")
	private User commentOwner;
	
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="game_id")
	private GameMaker associatedGame;
	
	@Column(updatable=false)
    private Date createdAt;
    private Date updatedAt;
    
	@PrePersist
    protected void onCreate() {
    	this.createdAt=new Date();
    }
    
    @PreUpdate
    protected void onUpdate() {
    	this.updatedAt=new Date();
    }

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public User getCommentOwner() {
		return commentOwner;
	}

	public void setCommentOwner(User commentOwner) {
		this.commentOwner = commentOwner;
	}
	
	public Comment() {};
	
}
