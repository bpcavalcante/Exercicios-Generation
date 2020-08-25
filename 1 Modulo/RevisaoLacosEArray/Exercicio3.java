package RevisaoLacosEArray;

import java.util.Scanner;

public class Exercicio3 {
	public static void main (String [] args ) {
		
		Scanner ler = new Scanner(System.in);
		
		double numero,intervaloA = 0,intervaloB = 0 ,intervaloC = 0 ,intervaloD = 0;
		
		System.out.println(" Digite um número: ");
		numero = ler.nextDouble();
		
		while(numero >=0 ) {
			if(numero >= 0 && numero <= 25) {
				intervaloA++;
			}
			else if(numero >= 26 && numero <= 50) {
				intervaloB++;
			}
			else if (numero >= 51 && numero <= 75) {
				intervaloC++;
			}
			else if(numero >= 76 && numero <= 100) {
				intervaloD++;
			}
			System.out.println(" Digite um número: ");
			numero = ler.nextDouble();
		}
		System.out.println(" Quantidade de números entre 0 e 25 : " + intervaloA);
		System.out.println(" Quantidade de números entre 26 e 50 : " + intervaloB);
		System.out.println(" Quantidade de números entre 51 e 75 : " + intervaloC);
		System.out.println(" Quantidade de números entre 76 e 100 : " + intervaloD);
	}

}
