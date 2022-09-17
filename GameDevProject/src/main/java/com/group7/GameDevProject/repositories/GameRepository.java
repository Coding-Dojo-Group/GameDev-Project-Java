package com.group7.GameDevProject.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.group7.GameDevProject.models.GameMaker;

@Repository
public interface GameRepository extends CrudRepository<GameMaker,Long> {

	List<GameMaker> findAll();
}