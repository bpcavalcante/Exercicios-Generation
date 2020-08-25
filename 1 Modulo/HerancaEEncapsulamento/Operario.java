package HerancaEEncapsulamento;

public class Operario extends Pessoa{
	private double valorProducao;
	private double comissao;
	private double vencimentoBase;
	
	public Operario(String nome, String endereco,String telefone,double valorProducao,double comissao,double vencimentoBase) {
		super(nome,endereco,telefone);
		this.comissao = comissao;
		this.valorProducao = valorProducao;
		this.vencimentoBase = vencimentoBase;
	}
	
	public void ganhoOperario(double valor,double comissao) {
		this.comissao = comissao;
		this.valorProducao = valor;
		this.vencimentoBase = valorProducao + (valor*(comissao/100));
		System.out.println("O valor é: " + vencimentoBase  );
	}

	public double getVencimentoBase() {
		return vencimentoBase;
	}

	public void setVencimentoBase(double vencimentoBase) {
		this.vencimentoBase = vencimentoBase;
	}

	public double getValorProducao() {
		return valorProducao;
	}

	public void setValorProducao(double valorProducao) {
		this.valorProducao = valorProducao;
	}

	public double getComissao() {
		return comissao;
	}

	public void setComissao(double comissao) {
		this.comissao = comissao;
	}
	
	

}
