package LacosRepeticoes;

import java.util.Scanner;

public class Exercicio4 {
	public static void main(String[] args) {
		
		
		Scanner ler = new Scanner(System.in);
		int idade,pessoas = 1, sexo , psicologico = 0, numeroCalmos = 0,mulheresNervosas = 0,homensAgressivo = 0,outrosCalmos = 0,
				quarentaNervosos = 0, dezoitoCalmos = 0;
		

		
		while(pessoas <= 3) {
			System.out.println(" Digite sua idade: ");
			idade = ler.nextInt();
			
			System.out.println(" Digite seu sexo:  1 - Masculino | 2 - Feminino | 3 - Outros ");
			sexo = ler.nextInt();
			
			System.out.println(" Digite seu estado mental: 1 - Calmo | 2 - Nervoso | 3 - Agressivo ");
			psicologico = ler.nextInt();
			if(psicologico == 1) {
				numeroCalmos++;
			}
			if(sexo == 2 && psicologico == 2) {
				mulheresNervosas++;
			}
			if(sexo == 1 && psicologico == 3) {
				homensAgressivo++;
			}
			if(sexo == 3 && psicologico == 1) {
				outrosCalmos++;
			}
			if (idade > 40 && psicologico == 2) {
				quarentaNervosos++;
			}
			if (idade < 18 && psicologico == 1) {
				dezoitoCalmos++;
			}
			
			pessoas++;
			

		}
		
		System.out.println(" O n�mero de pessoas calmas: " + numeroCalmos);
		System.out.println(" O n�mero de mulheres nervosas: " + mulheresNervosas);
		System.out.println(" O n�mero de homens agressivos: " + homensAgressivo);
		System.out.println(" O n�mero de outros calmos: " + outrosCalmos);
		System.out.println(" O n�mero de pessoas nervosas com mais de 40 anos: " + quarentaNervosos);
		System.out.println(" O n�mero de pessoas calmas com menos de 18 anos: " + dezoitoCalmos);
	}

}
