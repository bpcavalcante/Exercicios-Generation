package HerancaEEncapsulamento;

public class TesteOperario {
	public static void main(String[] args) {
		Operario bruno = new Operario("Bruno Profeta Cavalcante","Rua Padre José Vieira de Matos 970","11986608101",0,0,0);
		
		bruno.ganhoOperario(150, 20);
		
		System.out.println(bruno.getValorProducao());
		System.out.println(bruno.getComissao());
		System.out.println(bruno.getVencimentoBase());
		bruno.imprimirPessoa();
	}
}
