package HerancaEEncapsulamento;

public class TesteFornecedor {
	public static void main(String[] args) {
		
		Fornecedor fornecedor = new Fornecedor("Profeta Soluções","Rua Logo ali","11986608101",1000,500);
		
		fornecedor.obterSaldo(1000, 500);
		
		fornecedor.imprimirPessoa();
		
		System.out.println(fornecedor.getNome());
		fornecedor.setNome("Sensr.IT");
		System.out.println(fornecedor.getNome());
		
	}

}
