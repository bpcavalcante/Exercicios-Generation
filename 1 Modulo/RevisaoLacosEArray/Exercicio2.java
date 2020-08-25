package RevisaoLacosEArray;

import java.util.Scanner;

public class Exercicio2 {
	public static void main (String [] args ) {
		
		Scanner ler = new Scanner(System.in);
		double peso,altura,imc;
		
		System.out.println(" Digite seu peso: ");
		peso = ler.nextDouble();
		
		System.out.println(" Digite sua altura: ");
		altura = ler.nextDouble();
		
		imc = peso / (altura*altura);
		
		if(imc < 18.5 ) {
			System.out.println(" Abaixo do peso ");
			System.out.println(" Seu IMC : " + imc);
		}
		else if(imc >= 18.5 && imc <= 25) {
			System.out.println(" Peso normal ");
			System.out.println(" Seu IMC : " + imc);
		}
		else if(imc > 25 && imc <= 30) {
			System.out.println(" Acima do Peso ");
			System.out.println(" Seu IMC : " + imc);
		}
		else if(imc > 30) {
			System.out.println(" Obeso ");
			System.out.println(" Seu IMC : " + imc);
		}
		
		
		
	}

}
