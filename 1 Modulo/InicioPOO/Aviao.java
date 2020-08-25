package InicioPOO;

public class Aviao {
	private String nome;
	private String modelo;
	private String tipoCombustivel;
	
	public Aviao (String nome , String modelo , String tipoCombustivel ) {
		this.nome = nome;
		this.modelo = modelo;
		this.tipoCombustivel = tipoCombustivel;
	}
	
	public void imprimirAviao() {
		System.out.println("Nome: " + nome);
		System.out.println("Modelo " + modelo);
		System.out.println("Tipo Combustivel: " + tipoCombustivel);
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getModelo() {
		return modelo;
	}

	public void setModelo(String modelo) {
		this.modelo = modelo;
	}

	public String getTipoCombustivel() {
		return tipoCombustivel;
	}

	public void setTipoCombustivel(String tipoCombustivel) {
		this.tipoCombustivel = tipoCombustivel;
	}

}
