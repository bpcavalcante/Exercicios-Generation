package Array;

import java.util.Scanner;

public class Exercicio2 {
	public static void main (String [] args ) {
		
		Scanner ler = new Scanner(System.in);
		
		int [] vetor = new int [6];
		int somaPares = 0, somaImpares = 0;
		
		for(int i = 0; i < 6 ; i++) {
			System.out.println(" Digite um valor: ");
			vetor[i] = ler.nextInt();			
		}
		
		System.out.println("\n ------------------------------------- \n");
		System.out.println(" Números pares digitados: ");
		for(int i = 0 ; i < vetor.length ; i++ ) {
			if(vetor[i] % 2 == 0) {
				somaPares = somaPares + vetor[i];
				System.out.println(vetor[i]);
			}
		}
		System.out.println(" A soma dos pares : " + somaPares);
		
		System.out.println("\n ------------------------------------- \n");
		
		System.out.println(" Números impares digitados: ");
		for(int i = 0 ; i < vetor.length ; i++) {
			if(vetor[i] % 2 != 0) {
				somaImpares = somaImpares + vetor[i];
				System.out.println(vetor[i]);
			}
		}
		System.out.println(" A soma dos impares : " + somaImpares);
		
		
		
		
		
		
		
		
		
		
	}

}
