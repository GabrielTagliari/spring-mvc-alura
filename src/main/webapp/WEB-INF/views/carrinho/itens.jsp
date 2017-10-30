<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags"%>

<tags:pageTemplate titulo="Seu carrinho de compras">

<jsp:attribute name="extraScripts">

</jsp:attribute>

<jsp:body>
<section class="infoSection container">
	<h2 class="infoSection-titulo">Seu carrinho</h2>
	<table class="formularioDoCarrinho-tabela">
		<thead class="formularioDoCarrinho-cabecalho">
			<tr>
				<th></th>
				<th class="formularioDoCarrinho-cabecalho-item">Item</th>
				<th
					class="formularioDoCarrinho-cabecalho-item formularioDoCarrinho-cabecalho-preco">Preço</th>
				<th class="formularioDoCarrinho-cabecalho-item">Qtd</th>
				<th class="formularioDoCarrinho-cabecalho-item">Total</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${carrinhoCompras.itens}" var="item">
				<tr>
					<td class="formularioDoCarrinho-item"><a
						href="/products/livro-design-patterns"> <img
							class="formularioDoCarrinho-item-imagem"
							src="//cdn.shopify.com/s/files/1/0155/7645/products/design-patterns-featured_small.png?v=1411489099" />
					</a></td>
					<td class="formularioDoCarrinho-item">
						<h2 class="formularioDoCarrinho-item-titulo">${item.produto.titulo}</h2>
					</td>
					<td
						class="formularioDoCarrinho-item formularioDoCarrinho-item-preco">${item.preco}</td>
					<td class="formularioDoCarrinho-item"><input
						class="formularioDoCarrinho-item-quantidade" type="number" min="0"
						id="quantidade" name="quantidade"
						value="${carrinhoCompras.getQuantidade(item)}"></td>
					<td
						class="formularioDoCarrinho-item formularioDoCarrinho-item-precoTotal"
						title="PreÃ§o unitÃ¡rio: R$69,90">${carrinhoCompras.getTotal(item) }</td>
					<td class="formularioDoCarrinho-item">
						<form:form
							action="${s:mvcUrl('CCC#remover').arg(0, item.produto.id).arg(1, item.tipoPreco).build()}"
							method="post">
							<input type="image"
								src="//cdn.shopify.com/s/files/1/0155/7645/t/227/assets/trash.png?14829254290399893750"
								alt="Excluir" title="Excluir">
						</form:form>
					</td>
				</tr>
			</c:forEach>
		</tbody>
		<tfoot class="formularioDoCarrinho-rodape">
			<tr>
				<td
					class="formularioDoCarrinho-rodape-item formularioDoCarrinho-finalizar"
					colspan="3">
					<form:form action="${s:mvcUrl('PC#finalizar').build()}" method="post">
						<button class="formularioDoCarrinho-finalizar-botao" type="submit"
							name="checkout">
							Finalizar
							<span class="formularioDoCarrinho-finalizar-botao-texto" role="presentation"> compra</span>
						</button>
					</form:form>
				</td>
				<td class="formularioDoCarrinho-rodape-item">
					${carrinhoCompras.total}</td>
				<td></td>
			</tr>
		</tfoot>
	</table>
</section>
<div class="buscaDoRodape container" role="presentation">
		<label id="rotuloBuscaRodape" class="buscaDoRodape-rotuloEscondido"
			for="campoBuscaRodape">Busque por autor, título,conteúdo...</label> 
		<label class="buscaDoRodape-rotulo"	for="campoBuscaRodape">Não encontrou o seu livro?</label>
		<fieldset class="buscaDoRodape-fieldset">
			<input type="hidden" name="type" value="product"> <input
				id="campoBuscaRodape" class="buscaDoRodape-campo"
				placeholder="O que você procura?" type="search" name="q" required
				aria-required>
			<button class="buscaDoRodape-enviar" type="submit">Buscar</button>
		</fieldset>
</div>
<footer class="rodape">
	<div class="container" role="presentation">
		<div class="rodape-conteudo" role="presentation">
			<section class="rodape-secao">
				<a class="rodape-logo" href="#" title="Voltar ao topo da pÃ¡gina">
					<img
					src="//cdn.shopify.com/s/files/1/0155/7645/t/227/assets/logo-footer.svg?14829254290399893750"
					alt="altLogoFooter" />
				</a>
			</section>
			<section class="rodape-secao rodape-secaoLinks">
				<h3 class="rodape-titulo">
					Links da
					<div role="presentation" class="rodape-titulo-espacador"></div>
					Casa do Código
				</h3>
				<ul>
					<li class="rodape-item"><a class="rodape-itemLink"
						href="/pages/sobre-a-casa-do-codigo"> Sobre a Casa do
							CÃ³digo </a></li>
					<li class="rodape-item"><a class="rodape-itemLink"
						href="/pages/quero-ser-um-autor"> Quero ser um autor </a></li>
					<li class="rodape-item"><a class="rodape-itemLink"
						href="https://feedback.userreport.com/500b990e-9d86-4af5-ad72-3be3151b8dc0/"
						target="_blank"> Quero ler um livro sobre... </a></li>
					<li class="rodape-item"><a class="rodape-itemLink"
						href="mailto:contato@casadocodigo.com.br"> Contato </a></li>
					<li class="rodape-item"><a class="rodape-itemLink"
						href="http://suporte.casadocodigo.com.br"> Perguntas
							frequentes </a></li>
					<li class="rodape-item"><a class="rodape-itemLink"
						href="http://forum.casadocodigo.com.br"> FÃ³rum de
							discussÃµes </a></li>
					<li class="rodape-item"><a class="rodape-itemLink"
						href="http://www.caelum.com.br" target="_blank"> Caelum Ensino
							e InovaÃ§Ã£o </a></li>
					<li class="rodape-item"><a class="rodape-itemLink"
						href="http://www.galandra.com.br" target="_blank"> Galandra -
							Reforce seu inglÃªs </a></li>
					<li class="rodape-item"><a class="rodape-itemLink"
						href="http://livros.casadocodigo.com.br" rel="nofollow"> Meus
							E-books </a></li>
					<li class="rodape-item"><a class="rodape-itemLink"
						href="http://www.codecrushing.com" rel="nofollow"> Code
							Crushing </a></li>
					<li class="rodape-item"><a class="rodape-itemLink"
						href="/pages/politica-de-privacidade" rel="nofollow">
							Política de Privacidade </a></li>
				</ul>
			</section>
			<section class="rodape-secao rodape-secaoOutros">
				<h3 class="rodape-titulo">Receba as novidades, promoções e lançamentos</h3>
				<form class="rodape-formularioDaNewsletter"
					action="https://docs.google.com/forms/d/e/1FAIpQLSfLN8GYzRsSSdXVofZZkx-L7mXZVv0CrtJRhI2qKzf8sqVT2g/formResponse"
					method="POST">
					<input type="hidden" name="pageNumber" value="0"> <input
						type="hidden" name="backupCache" value=""> <input
						class="rodape-campoDaNewsletter" type="email" name="entry.1000000"
						value="" id="entry_0" placeholder="seu@email.com">
					<button class="rodape-botaoDaNewsletter" type="submit"
						name="submit" id="submit-newsletter">ok</button>
				</form>
				<h3 class="rodape-titulo rodape-tituloSecundario">Este site	aceita</h3>
				<ul>
					<li class="rodape-formaDePagamento"><img
						src="//cdn.shopify.com/s/files/1/0155/7645/t/227/assets/pagseguro.png?14829254290399893750"
						border="0" alt="pag seguro" /></li>
					<li class="rodape-formaDePagamento"><img
						src="//cdn.shopify.com/s/files/1/0155/7645/t/227/assets/paypal.png?14829254290399893750"
						border="0" alt="paypal" /></li>
				</ul>
				<h3 class="rodape-titulo rodape-tituloSecundario">Nas redes	sociais</h3>
				<ul>
					<li class="rodape-item rodape-redeSocial"><a
						class="compartilhar-facebook"
						href="http://www.facebook.com/casadocodigo" rel="nofollow"
						title="Casa do Código no Facebook" rel="nofollow" target="_blank">/CasaDoCodigo</a>
					</li>
					<li class="rodape-item rodape-redeSocial"><a
						class="compartilhar-twitter"
						href="http://www.twitter.com/casadocodigo" rel="nofollow"
						title="Casa do Código no Twitter" rel="nofollow" target="_blank">@casadocodigo</a>
					</li>
				</ul>
			</section>
		</div>
	</div>
</footer>
<footer class="categorias">
	<div class="container" role="presentation">
		<div class="categorias-footer" role="presentation">
			<section class="categorias-secao">
				<a class="categorias-itemLink"
					href="/collections/livros-de-desenvolvimento-web">
					<h3 class="categorias-titulo">Livros de Desenvolvimento Web</h3>
				</a>
				<ul>
					<li class="categorias-item"><a class="categorias-itemLink"
						href="/products/livro-jsf-jpa"> JSF e JPA </a></li>
					<li class="categorias-item"><a class="categorias-itemLink"
						href="/products/livro-nodejs"> Node.js </a></li>
					<li class="categorias-item"><a class="categorias-itemLink"
						href="/products/livro-rest"> REST </a></li>
					<li class="categorias-item"><a class="categorias-itemLink"
						href="/products/livro-ruby-on-rails"> Rails 4 </a></li>
				</ul>
			</section>
			<section class="categorias-secao">
				<a class="categorias-itemLink" href="/collections/livros-de-java">
					<h3 class="categorias-titulo">Livros de Java</h3>
				</a>
				<ul>
					<li class="categorias-item"><a class="categorias-itemLink"
						href="/products/livro-jsf-jpa"> JSF e JPA </a></li>
					<li class="categorias-item"><a class="categorias-itemLink"
						href="/products/livro-rest"> REST </a></li>
					<li class="categorias-item"><a class="categorias-itemLink"
						href="/products/livro-design-patterns"> Design Patterns </a></li>
					<li class="categorias-item"><a class="categorias-itemLink"
						href="/products/livro-certificacao-java-associate">
							Certifica&#231;&#227;o Java </a></li>
				</ul>
			</section>
			<section class="categorias-secao">
				<a class="categorias-itemLink" href="/collections/livros-de-mobile">
					<h3 class="categorias-titulo">Livros de Mobile</h3>
				</a>
				<ul>
					<li class="categorias-item"><a class="categorias-itemLink"
						href="/products/livro-android"> Google Android </a></li>
					<li class="categorias-item"><a class="categorias-itemLink"
						href="/products/livro-web-design-responsivo"> Web Design
							Responsivo </a></li>
					<li class="categorias-item"><a class="categorias-itemLink"
						href="/products/livro-swift-ios"> Swift e iOS </a></li>
					<li class="categorias-item"><a class="categorias-itemLink"
						href="/products/livro-iphone-ipad-ios"> iOS, iPhone e iPad </a></li>
				</ul>
			</section>
		</div>
	</div>
</footer>
<footer class="caelum-footer">
	<div class="grupoCaelum">
		<div class="container">
			<p class="grupoCaelum-title">
				<a href="http://www.caelum.com.br/grupo">Grupo Caelum</a>
			</p>
			<ul class="grupoCaelum-list">
				<li class="grupoCaelum-column">
					<p class="grupoCaelum-column-title">EducaÃ§Ã£o</p>
					<ul class="grupoCaelum-column-list">
						<li class="column-item"><a
							href="http://www.caelum.com.br/grupo"> <img
								class="column-item-logo"
								src="//cdn.shopify.com/s/files/1/0155/7645/t/227/assets/footer-icon-caelum.svg?14829254290399893750">
								<span class="column-item-title">Caelum</span>
						</a></li>
						<li class="column-item"><a
							href="http://www.casadocodigo.com.br"> <img
								class="column-item-logo"
								src="//cdn.shopify.com/s/files/1/0155/7645/t/227/assets/footer-icon-cdc.svg?14829254290399893750"><span
								class="column-item-title">Casa do CÃ³digo</span>
						</a></li>
					</ul>
				</li>
				<li class="grupoCaelum-column">
					<p class="grupoCaelum-column-title">EducaÃ§Ã£o Online</p>
					<ul class="grupoCaelum-column-list">
						<li class="column-item"><a href="http://www.alura.com.br">
								<img class="column-item-logo"
								src="//cdn.shopify.com/s/files/1/0155/7645/t/227/assets/footer-icon-alura.svg?14829254290399893750#alura"><span
								class="column-item-title">Alura</span>
						</a></li>
						<li class="column-item"><a
							href="http://www.alurastart.com.br"> <img
								class="column-item-logo"
								src="//cdn.shopify.com/s/files/1/0155/7645/t/227/assets/footer-icon-alurastart.svg?14829254290399893750"><span
								class="column-item-title">Alura Start</span>
						</a></li>
						<li class="column-item"><a href="http://www.musicdot.com.br">
								<img class="column-item-logo"
								src="//cdn.shopify.com/s/files/1/0155/7645/t/227/assets/footer-icon-musicdot.svg?14829254290399893750"><span
								class="column-item-title">MusicDot</span>
						</a></li>
						<li class="column-item"><a href="http://www.galandra.com.br">
								<img class="column-item-logo"
								src="//cdn.shopify.com/s/files/1/0155/7645/t/227/assets/footer-icon-galandra.svg?14829254290399893750"><span
								class="column-item-title">Galandra</span>
						</a></li>
					</ul>
				</li>
				<li class="grupoCaelum-column">
					<p class="grupoCaelum-column-title">Comunidade</p>
					<ul class="grupoCaelum-column-list">
						<li class="column-item"><a href="http://hipsters.tech"> <img
								class="column-item-logo"
								src="//cdn.shopify.com/s/files/1/0155/7645/t/227/assets/footer-icon-hipsters-pontotech.svg?14829254290399893750"><span
								class="column-item-title">Hipsters ponto Tech</span>
						</a></li>
						<li class="column-item"><a href="http://hipsters.jobs"> <img
								class="column-item-logo"
								src="//cdn.shopify.com/s/files/1/0155/7645/t/227/assets/footer-icon-hipsters-jobs.svg?14829254290399893750"><span
								class="column-item-title">Hipsters ponto Jobs</span>
						</a></li>
						<li class="column-item"><a href="http://www.guj.com.br">
								<img class="column-item-logo"
								src="//cdn.shopify.com/s/files/1/0155/7645/t/227/assets/footer-icon-guj.svg?14829254290399893750"><span
								class="column-item-title">GUJ</span>
						</a></li>
					</ul>
				</li>
				<li class="grupoCaelum-column">
					<p class="grupoCaelum-column-title">Parceiros</p>
					<ul class="grupoCaelum-column-list">
						<li class="column-item"><a href="http://www.imasters.com.br">
								<img class="column-item-logo"
								src="//cdn.shopify.com/s/files/1/0155/7645/t/227/assets/footer-icon-imasters.svg?14829254290399893750"><span
								class="column-item-title">iMasters</span>
						</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
</footer>
<script type="text/javascript"
	src="//cdn.shopify.com/s/files/1/0155/7645/t/227/assets/trackExternalLinks.js?14829254290399893750"></script>
<script type="text/javascript"
	src="//cdn.shopify.com/s/files/1/0155/7645/t/227/assets/userreport.js?14829254290399893750"></script>
<script type="text/javascript"
	src="//cdn.shopify.com/s/files/1/0155/7645/t/227/assets/discount.js?14829254290399893750"></script>
</jsp:body>
</tags:pageTemplate>