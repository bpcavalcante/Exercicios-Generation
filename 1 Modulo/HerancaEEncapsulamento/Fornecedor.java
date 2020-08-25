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
			System.out.println(" Seu saldo é POSITIVO ");
			System.out.println(" A diferença é: " + (credito - divida));
		}
		else {
			System.out.println(" Seu saldo é NEGATIVO");
			System.out.println(" A diferença é: " + (credito - divida));
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
