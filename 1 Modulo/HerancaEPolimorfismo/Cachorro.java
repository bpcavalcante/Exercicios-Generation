package HerancaEPolimorfismo;

public class Cachorro extends Animal {
	
	public Cachorro() {
		super("Cachorro",10);
	}
	
	public void correr() {
		System.out.println("Correndo igual cachorro");
	}
	
	public String getNome() {
		return "Nome: " + super.getNome() + "\n Idade: " + super.getIdade(); 
	}
	
	public void emitirSom() {
		System.out.println("Som do Cachorro: AUAU");
	}
	

}
