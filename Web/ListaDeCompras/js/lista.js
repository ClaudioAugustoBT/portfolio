var c=1;

function clicar(){
	
	var prod = document.getElementById('produto');
	var qtd = document.getElementById('qtd');
	var unidade = document.getElementById('unidade');
	var escreve = document.getElementById('lista');;
	escreve.innerHTML +='<tr>'+'<th scope="row" id="c'+c+'">'+c+'</th>'+'<td>'+prod.value+'</td>'+'<td>'+qtd.value+'</td>'+'<td>'+unidade.value+'</td>'+'</tr>';
	prod.value='';
	qtd.value='';
	unidade.value='';
	c++;
}


function imprimir(){
	
   var conteudo = document.getElementById('imprimir');
   tela_impressao = window.open('about:blank');
   tela_impressao.document.write(conteudo.innerHTML);
   tela_impressao.window.print();
   tela_impressao.window.close()
   
}
