package Array;

import java.util.Scanner;

public class Exercicio1 {
	public static void main (String [] args ) {
	
		Scanner ler = new Scanner(System.in);
		
		int [] A = new int[6];
		int soma;
		
		for(int i=0;i < 6 ; i++) {
			System.out.println(" Digite um valor :");
			A[i] = ler.nextInt();
		}
		
		soma = A[0] + A[1] + A[5];
		
		System.out.println(" Digite o valor para A[4] : ");
		A[4] = ler.nextInt(); 
		
		for(int i = 0; i < A.length ; i++ ) {
			System.out.println(" O valor da posição " + i + " : " + A[i]);
		}
		
	}
	

}
