package org.generation.blogPessoal.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

// Esta anotação indica que esta classe será uma entidade do JPA Hibernate
@Entity 

// Esta anotação indica que esta entidade será uma tabela dentro do banco de dados e que o nome sera postagem
@Table(name = "postagem")
public class Postagem {
	
	@Id // Esta anotação indica que este atributo será um ID
	@GeneratedValue(strategy = GenerationType.IDENTITY) // Esta anotação indica que o valor será gerado para o tipo identidade.
	private long id;
	
	@NotNull // Esta anotação indica que o campo não pode ser vazio
	@Size(min = 5 , max = 50) // Esta anotação indica o minimo e o maximo que o campo aceitará
	private String titulo;
	
	@NotNull
	@Size(min = 10 , max = 500)
	private String postagem;
	
	@Temporal(TemporalType.TIMESTAMP) // Está anotação indica que estamos trabalhando com tempo e será timestamp
	// Criamos um campo do tipo data = sempre que chamar um dado por essa classe vai calcular o tempo autal h,m,s
	private Date data = new java.sql.Date(System.currentTimeMillis());

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getPostagem() {
		return postagem;
	}

	public void setPostagem(String postagem) {
		this.postagem = postagem;
	}

	public Date getData() {
		return data;
	}

	public void setData(Date data) {
		this.data = data;
	}
	
	
	
	

}
