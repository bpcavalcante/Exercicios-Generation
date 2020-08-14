package InicioPOO;

public class Conta {
	private int conta;
	private int agencia;
	private double saldo;
	private String titular;
	
	public Conta (int conta,int agencia,double saldo,String titular) {
		this.conta = conta;
		this.agencia = agencia;
		this.saldo = saldo;
		this.titular = titular;
	}
	
	public void imprimirConta() {
		System.out.println("Conta: " + conta);
		System.out.println("Agência: " + agencia);
		System.out.println("Saldo: " + saldo);
		System.out.println("Titular: " + titular);
	}

	public int getConta() {
		return conta;
	}

	public void setConta(int conta) {
		this.conta = conta;
	}

	public int getAgencia() {
		return agencia;
	}

	public void setAgencia(int agencia) {
		this.agencia = agencia;
	}

	public double getSaldo() {
		return saldo;
	}

	public void setSaldo(double saldo) {
		this.saldo = saldo;
	}

	public String getTitular() {
		return titular;
	}

	public void setTitular(String titular) {
		this.titular = titular;
	}

}
