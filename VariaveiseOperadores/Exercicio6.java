package VariaveiseOperadores;

import java.util.Scanner;

public class Exercicio6 {
	public static void main (String [] args ) {
		
		Scanner ler = new Scanner(System.in);
		double x1,x2,y1,y2,d,auxiliar, raiz;
		
		System.out.println(" Digite o valor de x1 : ");
		x1 = ler.nextDouble();
		
		System.out.println(" Digite o valor de x2 : ");
		x2 = ler.nextDouble();
		
		System.out.println(" Digite o valor de y1 : ");
		y1 = ler.nextDouble();
		
		System.out.println(" Digite  o valor de y2 : ");
		y2 = ler.nextDouble();
		
		auxiliar = ((x2 - x1 ) * (x2 - x1)) + ((y2 - y1 ) * (y2 - y1));
		
		raiz = Math.sqrt(auxiliar);
		
		System.out.println(" O valor de D é : " + raiz);
		
	}
}
