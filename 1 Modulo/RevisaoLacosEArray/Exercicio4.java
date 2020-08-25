package RevisaoLacosEArray;

public class Exercicio4 {

	public static void main(String[] args) {
		int i,j = 1;
		double soma = 0;
		
		for(i = 1; i <= 99 ; i = i+2) {
			soma = soma +(i/j);
			j = j +1;
		}
		System.out.println(" A soma é: " + soma);
	}

}
