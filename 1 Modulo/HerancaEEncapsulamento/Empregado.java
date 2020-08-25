package HerancaEEncapsulamento;

public class Empregado extends Pessoa{
	private int codigoSetor;
	private double salarioBase;
	private double imposto;

	
	public Empregado(String nome, String endereco,String telefone,int codigoSetor,double salarioBase,double imposto) {
		super(nome,endereco,telefone);
		this.codigoSetor = codigoSetor;
		this.salarioBase = salarioBase;
		this.imposto = imposto;
		
	}
	
	public void calcularSalario(double salario,double porcentagem) {
		 
		System.out.println(" O valor do salário com desconto de " + porcentagem + "% é: " + (salario - (salario * (porcentagem/100))));
	}

	public int getCodigoSetor() {
		return codigoSetor;
	}

	public void setCodigoSetor(int codigoSetor) {
		this.codigoSetor = codigoSetor;
	}

	public double getSalarioBase() {
		return salarioBase;
	}

	public void setSalarioBase(double salarioBase) {
		this.salarioBase = salarioBase;
	}

	public double getImposto() {
		return imposto;
	}

	public void setImposto(double imposto) {
		this.imposto = imposto;
	}
	
	
	
}
