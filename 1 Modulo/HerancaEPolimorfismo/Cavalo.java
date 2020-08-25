package HerancaEPolimorfismo;

public class Cavalo extends Animal{

	public Cavalo() {
		super("Cavalo",20);
	}
	
	public void correr() {
		System.out.println("Correndo igual cavalo");
	}
	
	public String getNome() {
		return "Nome: " + super.getNome() + "\n Idade: " + super.getIdade();
	}
	
	public void emitirSom() {
		System.out.println("Som do Cavalo: HIHIHI");
	}
}
