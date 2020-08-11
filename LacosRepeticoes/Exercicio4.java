package LacosRepeticoes;

import java.util.Scanner;

public class Exercicio4 {
	public static void main(String[] args) {
		
		
		Scanner ler = new Scanner(System.in);
		int idade,pessoas = 1, sexo , psicologico = 0, numeroCalmos = 0,mulheresNervosas = 0,homensAgressivo = 0,outrosCalmos = 0,
				quarentaNervosos = 0, dezoitoCalmos = 0;
		
		System.out.println(" Digite sua idade: ");
		idade = ler.nextInt();
		
		System.out.println(" Digite seu sexo:  1 - Masculino | 2 - Feminino | 3 - Outros ");
		sexo = ler.nextInt();
		
		System.out.println(" Digite seu estado mental: 1 - Calmo | 2 - Nervoso | 3 - Agressivo ");
		psicologico = ler.nextInt();
		
		while(pessoas < 3) {
			if(psicologico == 1) {
				numeroCalmos++;
			}
			else if(sexo == 2 && psicologico == 2) {
				mulheresNervosas++;
			}
			else if(sexo == 1 && psicologico == 3) {
				homensAgressivo++;
			}
			else if(sexo == 3 && psicologico == 1) {
				outrosCalmos++;
			}
			else if (idade > 40 && psicologico == 2) {
				quarentaNervosos++;
			}
			else if (idade < 18 && psicologico == 1) {
				dezoitoCalmos++;
			}
			
			pessoas++;
			
			System.out.println(" Digite sua idade: ");
			idade = ler.nextInt();
			
			System.out.println(" Digite seu sexo:  1 - Masculino | 2 - Feminino | 3 - Outros ");
			sexo = ler.nextInt();
			
			System.out.println(" Digite seu estado mental: 1 - Calmo | 2 - Nervoso | 3 - Agressivo ");
			psicologico = ler.nextInt();
		}
		
		System.out.println(" O número de pessoas calmas: " + numeroCalmos);
		System.out.println(" O número de mulheres nervosas: " + mulheresNervosas);
		System.out.println(" O número de homens agressivos: " + homensAgressivo);
		System.out.println(" O número de outros calmos: " + outrosCalmos);
		System.out.println(" O número de pessoas nervosas com mais de 40 anos: " + quarentaNervosos);
		System.out.println(" O número de pessoas calmas com menos de 18 anos: " + dezoitoCalmos);
	}

}
