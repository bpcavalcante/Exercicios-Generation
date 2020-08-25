package HerancaEPolimorfismo;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Scanner;

public class Collections {
	public static void main(String[] args) {
		Collection<Integer> codProduto = new ArrayList();

		Scanner ler = new Scanner(System.in);

		int op;
		do {
		System.out.println(" Digite o que deseja fazer: \n1 - Adicionar um novo produto:" + "\n2 - Remover um produto:"
				+ "\n3 - Atualizar dado de algum produto: " + "\n4 - Apresentar todos os produtos cadastrados: " + "\n5 - Sair do Sistema");
		op = ler.nextInt();
		
		switch (op) {
		case 1:
			System.out.println(" Digite o codigo do produto que deseja cadastrar ao Estoque: ");
			codProduto.add(ler.nextInt());
			System.out.println();
			break;

		case 2:
			System.out.println(" Digite o codigo do produto que deseja excluir do Estoque: ");
			codProduto.remove(ler.nextInt());
			System.out.println();
			break;

		case 3:
			System.out.println("Codigo dos Produtos Cadastrados: ");
			for(int cod : codProduto) {
				System.out.println(" " + cod);
			}
			
			System.out.println(" Digite o qual deseja atualizar: ");
			codProduto.remove(ler.nextInt());
			
			System.out.println(" Digite o código atualizado: ");
			codProduto.add(ler.nextInt());
			
			break;
		case 4:
			System.out.println("Codigo dos Produtos Cadastrados: ");
			for(int cod : codProduto) {
				System.out.println(" " + cod);
			}
			System.out.println();
			break;
		case 5:
			System.out.println(" Saindo do Sistema...");
			break;
		default:
			System.out.println("Digite uma opção valida");
			break;

		}
		
		}while(op != 5);

	}
}
