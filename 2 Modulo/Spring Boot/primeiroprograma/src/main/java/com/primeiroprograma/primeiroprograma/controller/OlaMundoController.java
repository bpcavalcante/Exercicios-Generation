package com.primeiroprograma.primeiroprograma.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/olamundo")

public class OlaMundoController {
	
	@GetMapping
	public String Getolamundo() {
		return "Olá mundo primeiro programa com SpringBoot";
	}
	
	

}
