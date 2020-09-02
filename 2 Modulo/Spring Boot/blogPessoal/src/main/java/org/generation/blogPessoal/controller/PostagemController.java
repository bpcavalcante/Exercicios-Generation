package org.generation.blogPessoal.controller;

import java.util.List;

import org.generation.blogPessoal.model.Postagem;
import org.generation.blogPessoal.repository.PostagemRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController // Estou falando que está classe é uma Controller
@RequestMapping("/postagens") // Estou falando que para acessar precisa estar neste caminho
@CrossOrigin("*") // Para ser consumido de qualquer origem

public class PostagemController {
	
	@Autowired // Usamos para instanciar 
	private PostagemRepository repository;
	
	@GetMapping
	public ResponseEntity<List<Postagem>> GetAll(){
		return ResponseEntity.ok(repository.findAll());
	}
	
	@GetMapping("/{id}") // Quando for selecionado um id depois de postagens entrara neste get
	public ResponseEntity<Postagem> GetById(@PathVariable long id){ // PathVariable serve para referir ao id
		return repository.findById(id).map(resp -> ResponseEntity.ok(resp)).
				orElse(ResponseEntity.notFound().build());
	}
	
	@GetMapping("/titulo/{titulo}") // Passamos o diretorio e titulo que queremos procurar.
	public ResponseEntity<List<Postagem>> GetByTitulo(@PathVariable String titulo){
		return ResponseEntity.ok(repository.findAllByTituloContainingIgnoreCase(titulo));
	}
	
	@PostMapping // Aqui estamos falando que é um metodo post onde estamos enviado os dados.
	public ResponseEntity<Postagem> post (@RequestBody Postagem postagem){
		return ResponseEntity.status(HttpStatus.CREATED).body(repository.save(postagem));
	}
	
	@PutMapping // Aqui estamos falando que é um metodo de atualizar.
	public ResponseEntity<Postagem> put (@RequestBody Postagem postagem){
		return ResponseEntity.status(HttpStatus.OK).body(repository.save(postagem));	
	}
	
	@DeleteMapping("/{id}") // Aqui estamos falando que é para deletar quando passarmos um id
	public void delete(@PathVariable long id ) {
		repository.deleteById(id);
	}

}
