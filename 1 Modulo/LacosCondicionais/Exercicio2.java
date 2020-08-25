package LacosCondicionais;

import java.util.Scanner;

public class Exercicio2 {
	public static void main (String [] args ) {
		
		Scanner ler = new Scanner(System.in);
		double a,b,c;
		
		System.out.println(" Digite o valor de A : ");
		a = ler.nextInt();
		System.out.println(" Digite o valor de B : ");
		b = ler.nextInt();
		System.out.println(" Digite o valor de C : ");
		c = ler.nextInt();
		
		if((a > b && a > c) && (b > c)) {
			System.out.println(" O valor em ordem crescente são: " + a + " , " + b + " , " + c);
		}
		else if ((b > a && b > c) && (a > c)) {
			System.out.println(" O valor em ordem crescente são: " + b + " , " + a + " , " + c);
		}
		else if ((c > a && c > b) && ( b > a)) {
			System.out.println(" O valor em ordem crescente são: " + c + " , " + b + " , " + a);
		}
		else if ((a > b && a > c) && ( c > b)) {
			System.out.println(" O valor em ordem crescente são: " + a + " , " + c + " , " + b);
		}
		else if ((b > a && b > c) && ( c > a )) {
			System.out.println(" O valor em ordem crescente são: " + b + " , " + c + " , " + a);
		}
		else if ((c > a && c > b) && (a > b)){
			System.out.println(" O valor em ordem crescente são: " + c + " , " + a + " , " + b);
		}
	}
}
