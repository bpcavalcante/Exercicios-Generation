package HerancaEEncapsulamento;

public class TesteEmpregado {
	public static void main(String[] args) {
		
		Empregado bruno = new Empregado("Bruno Profeta Cavalcante","Rua Padre José Vieira de Matos 970","11986608101",1,2145,10);
		
		bruno.calcularSalario(2145, 10);
		
		bruno.setCodigoSetor(15);
		System.out.println(bruno.getCodigoSetor());
		
		
	}

}
