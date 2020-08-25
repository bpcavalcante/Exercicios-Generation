package VariaveiseOperadores;

import java.util.Scanner;

public class Exercicio2 {
	public static void main (String [] args ) {
		
		Scanner ler = new Scanner(System.in);
		
		int dias,ano,meses,restoDias;
		System.out.println(" Digite sua idade em dias: ");
		dias = ler.nextInt();
		
		ano = dias/365;
		meses = (dias%365) / 30;
		restoDias = dias - ((ano * 365) + (meses*30));
		

		
		
		System.out.println(" Idade em ano: " + ano);
		System.out.println(" Meses: " + meses);
		System.out.println(" Dias: " + restoDias);
	}
	

}
