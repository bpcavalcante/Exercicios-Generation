package HerancaEPolimorfismo;

public class Preguica extends Animal{
	
	public Preguica() {
		super("Preguica",50);
	}
	
	public void subindoArvore() {
		System.out.println("Escalando Arvore...");
	}
	
	public String getNome() {
		return "Nome:" + super.getNome() + "\n Idade:" + super.getIdade();
	}
	
	public void emitirSom() {
		System.out.println("Som da preguiça: Não sei kkkk");
	}
	

}
