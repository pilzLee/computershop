<!-- JSTL -->
<%@page import="com.devpro.entities.User"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- spring taglibs -->
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<c:url value="${pageContext.request.contextPath}" var="base" />

<!-- sử dụng tiếng việt -->
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
	<div class="container">
		<a class="navbar-brand" href="${base}/">Pilz Shop</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarResponsive" aria-controls="navbarResponsive"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item active">
					<a class="nav-link" href="${base}/">
						Home <span class="sr-only">(current)</span>
					</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="#">About</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Services</a> </li>
				<li class="nav-item"><a class="nav-link" href="${base}/contact">Contact</a></li>
				
				<sec:authorize access="isAuthenticated()">
					<li class="nav-item text-nowrap">
						<%
							String username = "";
							Object principal = org.springframework.security.core.context.SecurityContextHolder.getContext().getAuthentication().getPrincipal();
							if (principal instanceof org.springframework.security.core.userdetails.UserDetails) {
							  username = ((User)principal).getEmail();
							}
						%>
						<a class="nav-link" href="${pageContext.request.contextPath}/#">
							<%=username %>
						</a>
					</li>
					<li class="nav-item text-nowrap">
						<a class="nav-link" href="${base}/logout">
							Logout
						</a>
					</li>
				</sec:authorize>
				<sec:authorize access="!isAuthenticated()">
					<li class="nav-item text-nowrap">
						<a class="nav-link" href="${base}/login">
							Login
						</a>
					</li>
				</sec:authorize>
				
			</ul>
		</div>
	</div>
</nav>