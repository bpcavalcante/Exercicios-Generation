package com.generation.escola.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.generation.escola.model.Aluno;
import com.generation.escola.repository.AlunoRepository;

@RestController
@CrossOrigin("*")
@RequestMapping("/alunos")

public class AlunoController {
	
	@Autowired
	private AlunoRepository repository;
	
	@GetMapping
	public ResponseEntity<List<Aluno>> getAll(){
		return ResponseEntity.ok(repository.findAll());
	}
	
	@GetMapping("/{id}")
	public ResponseEntity<Aluno> getById(@PathVariable long id){
		return repository.findById(id).map(resp -> ResponseEntity.ok(resp))
				.orElse(ResponseEntity.notFound().build());
	}
	
	
	
	@PostMapping
	public ResponseEntity<Aluno> post (@RequestBody Aluno aluno){
		return ResponseEntity.ok(repository.save(aluno));
	}
	
	@DeleteMapping("/{id}")
	public void delete(@PathVariable long id) {
		repository.deleteById(id);
	}
	
	
	
}
