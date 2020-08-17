package HerancaEEncapsulamento;

public class Vendedor extends Pessoa {
	private double valorVendas;
	private double comissao;
	private double baseDoVendedor;

	 public Vendedor(String nome, String endereco,String telefone,double valorVendas, double comissao, double baseDoVendedor) {
		 super(nome,endereco,telefone);
		 this.valorVendas = valorVendas;
		 this.comissao = comissao;
		 this.baseDoVendedor = baseDoVendedor;
	 }
	 
	 public void valorBaseVendedor(double vendas, double comissao) {
		 this.valorVendas = vendas;
		 this.comissao = comissao;
		 this.baseDoVendedor = vendas + (vendas * (comissao/100));
		 System.out.println("Valor total: " + baseDoVendedor);
	 }

	public double getValorVendas() {
		return valorVendas;
	}

	public void setValorVendas(double valorVendas) {
		this.valorVendas = valorVendas;
	}

	public double getComissao() {
		return comissao;
	}

	public void setComissao(double comissao) {
		this.comissao = comissao;
	}

	public double getBaseDoVendedor() {
		return baseDoVendedor;
	}

	public void setBaseDoVendedor(double baseDoVendedor) {
		this.baseDoVendedor = baseDoVendedor;
	}
	 
	 
}
