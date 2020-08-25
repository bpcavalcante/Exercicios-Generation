package HerancaEEncapsulamento;

public class TesteVendedor {
	public static void main(String[] args) {
		Vendedor bruno = new Vendedor("Bruno Profeta Cavalcante","Rua Padre José Vieira de Matos 970","11986608101",0,0,0);
		
		bruno.imprimirPessoa();
		
		bruno.valorBaseVendedor(1000, 10);
	}

}
