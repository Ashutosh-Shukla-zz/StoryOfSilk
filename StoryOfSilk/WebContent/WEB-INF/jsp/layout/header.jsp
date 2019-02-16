<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<!--[if IE 8]>			<html class="ie ie8"> <![endif]-->
<!--[if IE 9]>			<html class="ie ie9"> <![endif]-->
<!--[if gt IE 9]><!-->
<html>
<!--<![endif]-->
<head>
<meta charset="utf-8" />
<title>Smarty - Multipurpose + Admin</title>
<meta name="keywords" content="HTML5,CSS3,Template" />
<meta name="description" content="" />
<meta name="Author" content="Dorin Grigoras [www.stepofweb.com]" />

<!-- mobile settings -->
<meta name="viewport"
	content="width=device-width, maximum-scale=1, initial-scale=1, user-scalable=0" />
<!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->

<!-- WEB FONTS : use %7C instead of | (pipe) -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400%7CRaleway:300,400,500,600,700%7CLato:300,400,400italic,600,700"
	rel="stylesheet" type="text/css" />

<!-- CORE CSS -->
<link href="assets/plugins/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />

<!-- REVOLUTION SLIDER -->
<link href="assets/plugins/slider.revolution/css/extralayers.css"
	rel="stylesheet" type="text/css" />
<link href="assets/plugins/slider.revolution/css/settings.css"
	rel="stylesheet" type="text/css" />

<!-- THEME CSS -->
<link href="assets/css/essentials.css" rel="stylesheet" type="text/css" />
<link href="assets/css/layout.css" rel="stylesheet" type="text/css" />

<!-- PAGE LEVEL SCRIPTS -->
<link href="assets/css/header-1.css" rel="stylesheet" type="text/css" />
<link href="assets/css/color_scheme/green.css" rel="stylesheet"
	type="text/css" id="color_scheme" />
	<link href="assets/css/layout-shop.css" rel="stylesheet" type="text/css" />

<style type="text/css">

@media only screen and (min-width: 768px) {
	.modal {
		text-align: center;
	}
	.modal:before {
		display: inline-block;
		vertical-align: middle;
		content: " ";
		height: 100%;
	}
	.modal-dialog {
		display: inline-block;
		text-align: left;
		vertical-align: middle;
	}
	.modal.fade .modal-dialog {
		-webkit-transform: scale(0.9);
		-moz-transform: scale(0.9);
		-ms-transform: scale(0.9);
		transform: scale(0.9);
		opacity: 0;
		-webkit-transition: all 0.3s ease;
		-moz-transition: all 0.3s ease;
		transition: all 0.3s ease;
	}
	.modal.fade.in .modal-dialog {
		-webkit-transform: scale(1);
		-moz-transform: scale(1);
		-ms-transform: scale(1);
		transform: scale(1); //
		-webkit-transform: translate3d(0, -300px, 0); //
		transform: translate3d(0, -300px, 0);
		opacity: 1;
	}
	
	.modal-lg-75 {
		width: 85%;
		
	}
}
</style>


</head>

<!--
		AVAILABLE BODY CLASSES:
		
		smoothscroll 			= create a browser smooth scroll
		enable-animation		= enable WOW animations

		bg-grey					= grey background
		grain-grey				= grey grain background
		grain-blue				= blue grain background
		grain-green				= green grain background
		grain-blue				= blue grain background
		grain-orange			= orange grain background
		grain-yellow			= yellow grain background
		
		boxed 					= boxed layout
		pattern1 ... patern11	= pattern background
		menu-vertical-hide		= hidden, open on click
		
		BACKGROUND IMAGE [together with .boxed class]
		data-background="assets/images/boxed_background/1.jpg"
	-->
<body class="smoothscroll enable-animation">