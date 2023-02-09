/*QUESTAO 2
 Adicionar Lists para armazenar os dados de 3 itens. Usar varredura para mostrar as
informações ao final de todos os itens assim como solicitado no item 1.

*/
List<String> myItens = new List<String>();
myItens.add('Geladeira');
myItens.add('Xícara');
myItens.add('Taco');
Integer[] atualEstoque = new Integer[]{32, 12, 11};
Integer[] estoqueMin = new Integer[]{25, 25, 10};
Integer[] estoqueMax = new Integer[]{100, 100, 50};
Decimal[] media = new Decimal[]{};
Integer count = 0;

do {
    Decimal calculoMedia = ((estoqueMax.get(count) + estoqueMin.get(count))/2);
   	media.add(calculoMedia); 
    count++;
} while (count <= 2);

For(Integer i = 0; i <= 2; i++ ){
	if (atualEstoque.get(i) > media.get(i)){
    System.debug(' ITEM: '+ myItens.get(i) +' | ESTOQUE: '+ atualEstoque.get(i) +
                 ' | Não efetuar compra.');
} else{
    System.debug(' ITEM: '+ myItens.get(i) +'  | ESTOQUE: '+ atualEstoque.get(i) +
                 ' | Efetuar compra.');    
}

}

System.debug(media);