package VariaveiseOperadores;

import java.util.Scanner;

public class Exercicio8 {
	public static void main (String [] args ) {
		
		Scanner ler = new Scanner(System.in);
		double valorFabrica,custoConsumidor;
		
		System.out.println(" Digite o valor do custo de Fabrica: ");
		valorFabrica = ler.nextDouble();
		
		custoConsumidor = (valorFabrica * 0.28) + (valorFabrica * 0.45) + valorFabrica;
		
		System.out.println(" O valor para o consumidor é : " + custoConsumidor);
		
		
	}

}
