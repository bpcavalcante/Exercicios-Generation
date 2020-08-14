package InicioPOO;

public class ProdutoEletronico {
	private String nome;
	private String modelo;
	private int memoria;
	private int camera;
	
	public ProdutoEletronico(String nome, String modelo, int memoria, int camera) {
		this.nome = nome;
		this.modelo = modelo;
		this.memoria = memoria;
		this.camera = camera;
	}
	
	public void imprimirEletronico() {
		System.out.println("Nome: " + nome);
		System.out.println("Modelo: " + modelo);
		System.out.println("Memoria: " + memoria);
		System.out.println("Camera: " + camera);
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

	public int getMemoria() {
		return memoria;
	}

	public void setMemoria(int memoria) {
		this.memoria = memoria;
	}

	public int getCamera() {
		return camera;
	}

	public void setCamera(int camera) {
		this.camera = camera;
	}

}
