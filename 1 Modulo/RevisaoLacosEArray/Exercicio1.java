package RevisaoLacosEArray;

import java.util.Scanner;

public class Exercicio1 {
	public static void main(String[] args) {

		Scanner ler = new Scanner(System.in);
		double valor = 0;
		int op;
		double calcular = 0;

		System.out.println(" Digite o valor a ser pago: ");
		valor = ler.nextDouble();

		do {
			System.out.println("Escolha a op��o que deseja: \n1 � vista em dinheiro ou cheque, recebe 20% de desconto\n"
					+ "2 � vista no cart�o de cr�dito, recebe 15% de desconto\n"
					+ "3 Em duas vezes, pre�o normal de etiqueta sem juros\n"
					+ "4 Em tr�s vezes, pre�o normal de etiqueta mais juros de 10%\n" + "5 Sair");
			op = ler.nextInt();

			switch (op) {

			case 1:
				System.out.println("� vista em dinheiro ou cheque, recebe 20% de desconto: ");
				calcular = valor - (valor * 0.20);
				System.out.println(" O valor a ser pago ser�: " + calcular);
				break;

			case 2:
				System.out.println("� vista no cart�o de cr�dito, recebe 15% de desconto: ");
				calcular = valor - (valor * 0.15);
				System.out.println(" O valor a ser pago ser�: " + calcular);
				break;

			case 3:
				System.out.println("Em duas vezes, pre�o normal de etiqueta sem juros: ");
				System.out.println(" O valor a ser pago ser�: " + valor);

			case 4:
				System.out.println(" Em tr�s vezes, pre�o normal de etiqueta mais juros de 10%: ");
				calcular = valor + (valor * 0.10);
				System.out.println(" O valor a ser pago ser�: " + calcular);
				break;

			case 5:
				System.out.println(" Sair ");
				System.out.println(" Programo finalizado ");

			}
			System.out.println("\n\n");
		} while (op != 5);

	}

}
