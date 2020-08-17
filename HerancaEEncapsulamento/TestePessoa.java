package HerancaEEncapsulamento;

public class TestePessoa {
	
	public static void main(String[] args) {
		Pessoa bruno = new Pessoa("Bruno Profeta Cavalcante", "Rua Padre José Vieira de Matos" , "11986608101");
		
		bruno.imprimirPessoa();
		
		bruno.setNome(" Viviam Profeta Cavalcante");
		
		bruno.imprimirPessoa();
		
		System.out.println(bruno.getTelefone());
		
		
	}

}
