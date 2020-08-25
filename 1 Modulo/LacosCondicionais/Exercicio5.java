package LacosCondicionais;

import java.util.Scanner;

public class Exercicio5 {
	public static void main(String[] args) {

		Scanner ler = new Scanner(System.in);

		int a, b, op, resultado = 0;

		System.out.println(" Digite o valor de A: ");
		a = ler.nextInt();

		System.out.println(" Digite o valor de B: ");
		b = ler.nextInt();

		System.out.println(" Digite 1 = Soma , 2 - Menos , 3 - Multiplicação");
		op = ler.nextInt();

		switch (op) {
		case 1:
			resultado = a + b;
			break;
		case 2:
			resultado = a - b;
			break;
		case 3:
			resultado = a * b;
			break;
		default:
			System.out.println(" Digite um valor válido");
			break;
		}
		System.out.println(" O valor é: " + resultado);
	}

}
