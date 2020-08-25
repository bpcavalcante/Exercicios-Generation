package VariaveiseOperadores;

import java.util.Scanner;

public class Exercicio1 {

		public static void main (String [] args ) {
			Scanner leitor = new Scanner(System.in);
			int idadeAno,idadeMeses,idadeDias,anos,meses,dias,totalDias;
			
			System.out.println(" Digite sua idade em anos: ");
			idadeAno = leitor.nextInt();
			System.out.println(" Digite sua idade meses: ");
			idadeMeses = leitor.nextInt();
			System.out.println(" Digite sua idade em dias: ");
			idadeDias = leitor.nextInt();
			
			anos = idadeAno * 365;
			meses = idadeMeses * 30;
			dias = idadeDias * 1;
			totalDias = anos + meses + dias;
			
			System.out.println(totalDias);
		}
}
