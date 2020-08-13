package RevisaoLacosEArray;

import java.util.Scanner;

public class Exercicio5 {
	public static void main(String[] args) {
		
		Scanner ler = new Scanner(System.in);
		
		double [] vetor = new double[5];
		int cod;
		
		for(int i = 0 ; i < 5 ; i++) {
			System.out.println(" Digite um valor:");
			vetor[i] = ler.nextDouble();
		}
		
		do {
		System.out.println("0 - Finalize o programa \n1 - Mostre o vetor na ordem direta; \n2 - Mostre o vetor na ordem inversa:");
		cod = ler.nextInt();
		
		switch(cod) {
		case 0:
			System.out.println(" Programa finalizado ");
			break;
		case 1:
			for(int i = 0 ; i < 5 ; i++) {
				System.out.print("\t" + vetor[i]);
			}
			break;
		case 2:
			for(int i = 4 ; i >= 0 ; i--) {
				System.out.print("\t" + vetor[i]);
			}
			break;
		default:
			System.out.println(" Código invalido ");
			break;
		}
		System.out.println();
		}while(cod != 0);
		
		
		
	}

}
