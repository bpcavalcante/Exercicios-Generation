package HerancaEPolimorfismo;

public class TesteSom {
	public static void main(String[] args) {
		Cachorro cachorro = new Cachorro();
		//System.out.println(cachorro.emitirSom());
		cachorro.correr();
		cachorro.emitirSom();
		
		System.out.println();
		
		Cavalo cavalo = new Cavalo();
		cavalo.emitirSom();
		cavalo.correr();
		
		System.out.println();
		
		Preguica preguica = new Preguica();
		preguica.emitirSom();
		preguica.subindoArvore();
		
		
	}

}
