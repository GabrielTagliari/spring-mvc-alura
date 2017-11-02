<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Livro de Java e Android e muito mais</title>
<c:url value="/resources/css" var="cssPath"/>
<link rel="stylesheet" href="${cssPath}/bootstrap.min.css">
<style type="text/css">
	.container {
		padding: 30px 0px;
	}
</style>
</head>
<body>
	
	<nav class="navbar navbar-expand-md navbar-dark bg-dark navbar-fixed-top">
      <a class="navbar-brand" href="${s:mvcUrl('HC#index').build()}">Casa do código</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample04" aria-controls="navbarsExample04" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarsExample04">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link" href="${s:mvcUrl('PC#listar').build()}">Lista de Produtos<span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="${s:mvcUrl('PC#form').build()}">Cadastro de Produtos</a>
          </li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
        	<li class="nav-item">
        		<a href="#" class="nav-link">
        			<security:authentication property="principal" var="usuario"/>
        			${usuario.username}
        		</a>
        	</li>
        </ul>
        <form class="form-inline my-2 my-md-0">
          <input class="form-control" type="text" placeholder="Search">
        </form>
      </div>
    </nav>

	<main role="main" class="container">
		<h1>Lista de Produtos</h1>
		
		<div>${sucesso}</div>
		
		<table class="table table-bordered table-striped table-hover">
			<tr>
				<th>Título</th>
				<th>Descrição</th>
				<th>Preços</th>
				<th>Páginas</th>
			</tr>
			<c:forEach items="${produtos}" var="produto">
				<tr>
					<td>
						<a href="${s:mvcUrl('PC#detalhe').arg(0, produto.id).build()}">${produto.titulo}</a>
					</td>
					<td>${produto.descricao}</td>
					<td>${produto.precos}</td>
					<td>${produto.paginas}</td>
				</tr>
			</c:forEach>
		</table>
	</main>
</body>
</html>