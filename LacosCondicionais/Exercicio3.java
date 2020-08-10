package LacosCondicionais;

import java.util.Scanner;

public class Exercicio3 {
	public static void main (String [] args ) {
		
		Scanner ler = new Scanner(System.in);
		
		int idade ;
		String nome;
		
		System.out.println(" Digite seu nome: ");
		nome = ler.nextLine();
		
		
		System.out.println(" Digite sua idade: ");
		idade = ler.nextInt();
		
		if (idade >= 10 && idade <= 14) {
			System.out.println(nome + " você se encontra na categoria : Infantil ");
		}
		else if (idade >= 15 && idade <= 17) {
			System.out.println(nome + " você se encontra na categoria : Juvenil ");
		}
		else if (idade >= 18 && idade <= 25) {
			System.out.println(nome + " você se encontra na categoria : Adulto ");
		}
		
	}
}
