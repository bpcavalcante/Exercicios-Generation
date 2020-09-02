package org.generation.blogPessoal.repository;

import java.util.List;

import org.generation.blogPessoal.model.Postagem;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

// Usamos para indicar que é um repositorio
@Repository 
// Estamos criando uma interface que herda a JpaRepository e passamos o tipo da entidade que estamos trabalhando
// e qual o tipo do ID e tem que ser no tipo primitivo dele.

public interface PostagemRepository extends JpaRepository<Postagem, Long>{
	
	// Consulta pelo titulo da postagem
	// Usamos para trazer todas as postagens com o titulo pedido e ignorando as letras maiusculas e minusculas
	public List<Postagem> findAllByTituloContainingIgnoreCase(String titulo);
	

}
