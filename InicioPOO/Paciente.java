package InicioPOO;

public class Paciente {
	private String nome;
	private String cpf;
	private int rg;
	private String diagnostico;
	
	public Paciente(String nome,String cpf,int rg,String diagnostico) {
		this.nome = nome;
		this.cpf = cpf;
		this.rg = rg;
		this.diagnostico = diagnostico;
	}
	
	public void imprimirPaciente() {
		System.out.println("Nome: " + nome);
		System.out.println("CPF: " + cpf);
		System.out.println("RG: " + rg);
		System.out.println("Diagnostico: " + diagnostico);
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

	public String getDiagnostico() {
		return diagnostico;
	}

	public void setDiagnostico(String diagnostico) {
		this.diagnostico = diagnostico;
	}
	
	

}
