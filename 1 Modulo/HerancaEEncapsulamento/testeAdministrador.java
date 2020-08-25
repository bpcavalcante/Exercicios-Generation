package HerancaEEncapsulamento;

public class testeAdministrador {
	public static void main(String[] args) {
		Administrador bruno = new Administrador("Bruno Profeta Cavalcante","Rua Padre José Vieira de Matos 970","11986608101",500,100);
		
		bruno.imprimirPessoa();
		
		bruno.totalAjudaDeCusto(300, 200);
		
		System.out.println(bruno.getAjudaDeCustoEstadias());
		
		
	}

}
