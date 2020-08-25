package LacosCondicionais;

import java.util.Scanner;

public class Exercicio1 {
	public static void main ( String [] args ) {
		
		Scanner ler = new Scanner(System.in);
		int a,b,c;
		
		System.out.println(" Digite o valor de a : ");
		a = ler.nextInt();
		
		System.out.println(" Digite o valor de b : ");
		b = ler.nextInt();
		
		System.out.println(" Digite o valor de c : ");
		c = ler.nextInt();
		
		if (a > b && a > c) {
			System.out.println(" O maior número é : " + a);
		}
		
		else if (b > a && b > c) {
			System.out.println(" O maior número é : " + b);
		}
		
		else if (c > a && c > b) {
			System.out.println(" O maior número é : " + c );
		}
		else {
			System.out.println(" Você digitou um valor inválido ");
		} 
		
	}
}
