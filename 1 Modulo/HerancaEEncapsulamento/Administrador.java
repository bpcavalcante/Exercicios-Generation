package HerancaEEncapsulamento;

public class Administrador extends Pessoa{
	private double ajudaDeCustoViagens;
	private double ajudaDeCustoEstadias;
	
	public Administrador(String nome, String endereco,String telefone,double viagens,double estadias) {
		super(nome,endereco,telefone);
		this.ajudaDeCustoEstadias = estadias;
		this.ajudaDeCustoViagens = viagens;
	}
	
	public void totalAjudaDeCusto(double viagens,double estadias) {
		this.ajudaDeCustoEstadias = estadias;
		this.ajudaDeCustoViagens = viagens;
		System.out.println(" O total da ajuda de custo é: " + (viagens+estadias));
	}

	public double getAjudaDeCustoViagens() {
		return ajudaDeCustoViagens;
	}

	public void setAjudaDeCustoViagens(double ajudaDeCustoViagens) {
		this.ajudaDeCustoViagens = ajudaDeCustoViagens;
	}

	public double getAjudaDeCustoEstadias() {
		return ajudaDeCustoEstadias;
	}

	public void setAjudaDeCustoEstadias(double ajudaDeCustoEstadias) {
		this.ajudaDeCustoEstadias = ajudaDeCustoEstadias;
	}
	
}
