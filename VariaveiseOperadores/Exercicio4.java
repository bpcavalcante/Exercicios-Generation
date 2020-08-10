package VariaveiseOperadores;

import java.util.Scanner;

public class Exercicio4 {
	public static void main (String [] args ) {
		
		Scanner ler = new Scanner(System.in);
		double a,b,c,d,r,s;
		
		System.out.println(" Digite o valor de A: ");
		a = ler.nextDouble();
		
		System.out.println(" Digite o valor de B: ");
		b = ler.nextDouble();
		
		System.out.println(" Digite o valor de C: ");
		c = ler.nextDouble();
		
		r = (a+b) * (a+b);
		
		s = (b+c) * (b+c);
		
		d = (r+s)/2;
		
		System.out.print(" O valor de D: " + d);
		
	}
}
