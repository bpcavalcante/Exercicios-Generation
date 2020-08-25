package InicioPOO;

public class Patinete {
	private String nome;
	private String modelo;
	private int numero;
	
	public Patinete(String nome,String modelo,int numero) {
		this.nome = nome;
		this.modelo = modelo;
		this.numero = numero;
	}
	
	public void imprimirPatinete() {
		System.out.println("Nome: " + nome);
		System.out.println("Modelo: " + modelo);
		System.out.println("Número: " + numero);		
	}

}
