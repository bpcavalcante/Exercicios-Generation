package VariaveiseOperadores;

import java.util.Scanner;

public class Exercicio7 {
	public static void main (String [] args ) {
		
		Scanner ler = new Scanner(System.in);
		double a,b,c,d,e,f,x,y;
		
		System.out.println(" Digite o valor de A : ");
		a = ler.nextDouble();
		System.out.println(" Digite o valor de B : ");
		b = ler.nextDouble();
		System.out.println(" Digite o valor de C : ");
		c = ler.nextDouble();
		System.out.println(" Digite o valor de D : ");
		d = ler.nextDouble();
		System.out.println(" Digite o valor de E : ");
		e = ler.nextDouble();
		System.out.println(" Digite o valor de F : ");
		f = ler.nextDouble();
 		
		x = ((c*e) - (b*f)) / ((a*e) - (b*d));
		
		y = ( ((a*f) - ( c* d )) / ((a*e) - ( b*d )) );
		
		System.out.println(" O valor de x : " + x );
		System.out.println(" O valor de y : " + y);
	}
}
