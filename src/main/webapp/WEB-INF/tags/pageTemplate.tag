<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="titulo" required="true"%>
<%@ attribute name="bodyClass" required="false"%>
<%@ attribute name="extraScripts" fragment="true"%>

<!doctype html>
<html lang="pt-BR">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width">
<link rel="icon"
	href="//cdn.shopify.com/s/files/1/0155/7645/t/227/assets/favicon.png?14829254290399893750"
	type="image/png" />
<link href="https://plus.google.com/108540024862647200608" rel="publisher">
<title>${titulo}-Casa do Código</title>
<link rel="alternate" type="application/json+oembed"
	href="https://www.casadocodigo.com.br/products/livro-java8.oembed">
<style media="all">
.additional-checkout-button {
	border: 0 !important;
	border-radius: 5px !important;
	display: inline-block;
	margin: 0 0 10px;
	padding: 0 24px !important;
	max-width: 100%;
	min-width: 150px !important;
	line-height: 44px !important;
	text-align: center !important
}

.additional-checkout-button+.additional-checkout-button {
	margin-left: 10px
}

.additional-checkout-button:last-child {
	margin-bottom: 0
}

.additional-checkout-button span {
	font-size: 14px !important
}

.additional-checkout-button img {
	display: inline-block !important;
	height: 1.3em !important;
	margin: 0 !important;
	vertical-align: middle !important;
	width: auto !important
}

@media ( max-width : 500px) {
	.additional-checkout-button {
		display: block;
		margin-left: 0 !important;
		padding: 0 10px !important;
		width: 100%
	}
}

.additional-checkout-button--apple-pay {
	background-color: #000 !important;
	color: #fff !important;
	display: none;
	font-family: -apple-system,& #39; Helvetica Neue&#39; , sans-serif
	!important;
	min-width: 150px !important;
	white-space: nowrap !important
}

.additional-checkout-button--apple-pay:hover,
	.additional-checkout-button--apple-pay:active,
	.additional-checkout-button--apple-pay:visited {
	color: #fff !important;
	text-decoration: none !important
}

.additional-checkout-button--apple-pay .additional-checkout-button__logo
	{
	background: -webkit-named-image(apple-pay-logo-white) center center
		no-repeat !important;
	background-size: auto 100% !important;
	display: inline-block !important;
	vertical-align: middle !important;
	width: 3em !important;
	height: 1.3em !important
}

@media ( max-width : 500px) {
	.additional-checkout-button--apple-pay {
		display: none
	}
}

.additional-checkout-button--paypal-express {
	background-color: #ffc439 !important
}

.additional-checkout-button--amazon {
	background-color: #fad676 !important;
	position: relative !important
}

.additional-checkout-button--amazon .additional-checkout-button__logo {
	-webkit-transform: translateY(4px) !important;
	transform: translateY(4px) !important
}

.additional-checkout-button--amazon .alt-payment-list-amazon-button-image
	{
	max-height: none !important;
	opacity: 0 !important;
	position: absolute !important;
	top: 0 !important;
	left: 0 !important;
	width: 100% !important;
	height: 100% !important
}

.additional-checkout-button-visually-hidden {
	border: 0 !important;
	clip: rect(0, 0, 0, 0) !important;
	clip: rect(0, 0, 0, 0) !important;
	width: 1px !important;
	height: 1px !important;
	margin: -2px !important;
	overflow: hidden !important;
	padding: 0 !important;
	position: absolute !important
}
</style>
<!-- inject:css -->
<link rel="stylesheet"
	href="//cdn.shopify.com/s/files/1/0155/7645/t/227/assets/style.css?14829254290399893750">
<!-- endinject -->
<link rel="canonical"
	href="https://www.casadocodigo.com.br/products/livro-java8">
</head>
<body class="${bodyClass}">

<%@ include file="/WEB-INF/views/header.jsp"%>

<jsp:doBody />

<jsp:invoke fragment="extraScripts" />