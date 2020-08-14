package InicioPOO;

public class Cliente {
	private String nome;
	private String cpf;
	private int rg;
	private int idade;
	
	public Cliente (String nome, String cpf, int rg, int idade) {
		this.nome = nome;
		this.cpf = cpf;
		this.rg = rg;
		this.idade = idade;
	}
	
	public void imprimirCliente() {
		System.out.println("Nome do Cliente: " + nome);
		System.out.println("Nome do CPF: " + cpf);
		System.out.println("Nome do RG: " + rg);
		System.out.println("Nome do Idade: " + idade);
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public int getRg() {
		return rg;
	}

	public void setRg(int rg) {
		this.rg = rg;
	}

	public int getIdade() {
		return idade;
	}

	public void setIdade(int idade) {
		this.idade = idade;
	}
	
	

}
