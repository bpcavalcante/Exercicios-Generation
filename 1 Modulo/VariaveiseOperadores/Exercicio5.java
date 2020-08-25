package VariaveiseOperadores;

import java.util.Scanner;

public class Exercicio5 {
	public static void main (String [] args ) {
		
		Scanner ler = new Scanner(System.in);
		double nota1,nota2,nota3,media;
		
		System.out.println(" Digite a nota da A1: ");
		nota1 = ler.nextDouble();
		
		System.out.println(" Digite a nota da A2: ");
		nota2 = ler.nextDouble();
		
		System.out.println(" Digite a nota da A3: ");
		nota3 = ler.nextDouble();
		
		media = ((nota1 * 2) + (nota2 * 3) + (nota3 * 5)) / 10;
		
		System.out.println(" A média do aluno foi: " + media);
		
	}

}
