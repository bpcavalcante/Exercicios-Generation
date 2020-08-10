package VariaveiseOperadores;

import java.util.Scanner;

public class Exercicio3 {
	public static void main (String [] args ) {
		
		Scanner ler = new Scanner(System.in); 
		int segundos,horas,minutos,segundosRestante;
		
		System.out.println(" Digite em segundos quanto tempo durou o evento: ");
		segundos = ler.nextInt();
		
		horas = (segundos/60)/60;
		
		minutos = (segundos/60)%60;
		
		segundosRestante = segundos  - (((horas*60)*60) + (minutos*60));
		
		
		
		System.out.println(horas + ":" + minutos + ":" + segundosRestante );

	}
}
