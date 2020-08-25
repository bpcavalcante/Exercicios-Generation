package HerancaEEncapsulamento;

public class Fornecedor extends Pessoa{
	private double valorCredito;
	private double valorDivida;
	
	public Fornecedor(String nome,String endereco,String telefone,double valorCredito,double valorDivida) {
		super(nome,endereco,telefone);
		this.valorCredito = valorCredito;
		this.valorDivida = valorDivida;
	}
	
	public void obterSaldo(double credito,double divida) {
		if(credito - divida >= 0) {
			System.out.println(" Seu saldo � POSITIVO ");
			System.out.println(" A diferen�a �: " + (credito - divida));
		}
		else {
			System.out.println(" Seu saldo � NEGATIVO");
			System.out.println(" A diferen�a �: " + (credito - divida));
		}
	}

	public double getValorCredito() {
		return valorCredito;
	}

	public void setValorCredito(double valorCredito) {
		this.valorCredito = valorCredito;
	}

	public double getValorDivida() {
		return valorDivida;
	}

	public void setValorDivida(double valorDivida) {
		this.valorDivida = valorDivida;
	}
	
	
	
	
}
