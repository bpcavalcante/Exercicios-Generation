package com.amigos.amizade.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/atividade")

public class atividade {
	
	@GetMapping
	public String getAtividade() {
		return " Meus grupos de amizades são muito importantes para minha vida, pois são com eles que falo sobre minhas dificuldade e conquistas."
				+ " E passamos o tempo se distraindo e esquecendo dos problemas do dia a dia"
				+ " .Adoro me reunir com eles, damos muitas risadas juntos. ";
	}
	
	@GetMapping("/pergunta")
	
	public String getTeste() {
		return "Que papel seus grupos\r\n" + 
				"organizados têm em sua\r\n" + 
				"vida? São importantes? Você\r\n" + 
				"gosta de se reunir com eles?\r\n" + 
				"Por que? ";
	}

}
