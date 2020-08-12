package Array;

import java.util.Scanner;

public class Exercicio3 {
	public static void main(String[] args) {
		
		Scanner ler = new Scanner(System.in);
		
		int [][] matriz = new int[3][3];
		int contadorDez = 0 ;
		
		for(int l = 0 ; l < 3 ; l++ ) {
			for(int c = 0 ; c < 3 ; c++) {
				System.out.println("Digite um valor : ");
				matriz[l][c] = ler.nextInt();
				if(matriz[l][c] > 10 ) {
					contadorDez++;
				}
			}
		}
		
		for(int l = 0; l < 3 ; l++) {
			for(int c = 0 ; c < 3 ; c++) {
				System.out.print(" \t \t " + matriz[l][c]);
			}
			System.out.println("\n");
		}
		
		System.out.println("\n Esta matriz possui " + contadorDez + " números maiores que 10 ");
		
		
		
	}

}
