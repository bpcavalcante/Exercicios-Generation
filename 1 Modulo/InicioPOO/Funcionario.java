package InicioPOO;

public class Funcionario {
	private String nome;
	private String cargo;
	private String cpf;
	private int rg;
	private String supervisor;
	
	public Funcionario (String nome, String cargo, String cpf, int rg , String supervisor) {
		this.nome = nome;
		this.cargo = cargo;
		this.cpf = cpf;
		this.rg = rg;
		this.supervisor = supervisor;
	}
	
	public void imprimirFuncionario() {
		System.out.println("Nome: " + nome);
		System.out.println("Cargo: " + cargo);
		System.out.println("CPF:: " + cpf);
		System.out.println("RG: " + rg);
		System.out.println("Supervisor: " + supervisor);
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCargo() {
		return cargo;
	}

	public void setCargo(String cargo) {
		this.cargo = cargo;
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

	public String getSupervisor() {
		return supervisor;
	}

	public void setSupervisor(String supervisor) {
		this.supervisor = supervisor;
	}

}
