package LacosRepeticoes;

import java.util.Scanner;

public class Exercicio3 {
	public static void main(String[] args) {
		
		Scanner ler = new Scanner(System.in);
		
		int idade,anos21 = 0, anos50= 0;
		
		System.out.println(" Digite sua idade : ");
		idade = ler.nextInt();
		
		while(idade != -99) {
			if (idade < 21) {
				anos21++;
			}
			else if(idade > 50) {
				anos50++;
			}
			
		System.out.println(" Digite sua idade : ");
		idade = ler.nextInt();
		
		}
		System.out.println(" Total de pessoas com menos de 21 anos: " + anos21);
		System.out.println(" Total de pessoas com mais de 50 anos: " + anos50);
	}
}
