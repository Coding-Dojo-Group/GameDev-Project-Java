package com.group7.GameDevProject.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.group7.GameDevProject.models.GameMaker;
import com.group7.GameDevProject.models.User;
import com.group7.GameDevProject.repositories.GameRepository;

@Service
public class GameService {
	@Autowired
	private GameRepository gRepo;
	
	public GameMaker findById(Long id) {
		Optional<GameMaker> result = gRepo.findById(id);
		if(result.isPresent()) {
			return result.get();
		}
		return null;
	}
	public List<GameMaker> allGames(){
		return gRepo.findAll();
	}
	public GameMaker create(GameMaker game, User user) {
		game.setUser(user);
		return gRepo.save(game);
	}
	public GameMaker update(GameMaker game) {
		return gRepo.save(game);
	}
	
	public void delete(Long id) {
		gRepo.deleteById(id);
	}
	
}
