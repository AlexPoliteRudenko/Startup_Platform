<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<spring:url value="/project/photo" var="projectPhotoUrl"/>
<%--<c:set var="photo" value="${projectPhotoUrl}/${project.id}"/>--%>
<spring:url value="/user/photo" var="projectPhotoUrl"/>
<c:set var="photo" value="${projectPhotoUrl}/${dtoUserProfile.id}"/>
<c:set var="ivnProgress" value="${(investedAmount*100/project.desc.cost)}"/>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<title>Project Page</title>

	<link rel="shortcut icon" href="${contextPath}/resources/img/favicon.png" type="image/x-icon">
	<link href="${contextPath}/resources/css/bootstrap.css" rel="stylesheet">
	<link href="${contextPath}/resources/css/font-awesome.css" rel="stylesheet">
	<link href="${contextPath}/resources/css/main.css" rel="stylesheet">
	<link href="${contextPath}/resources/css/menu.css" rel="stylesheet">

	<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.js"></script>

</head>

<body>

<div class="navbar navbar-default navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#responsive-menu">
				<span class="sr-only">Menu</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">Great<span class="fa fa-rocket fa-lg" aria-hidden="true">
                <text/>
            </span>Start</a>
		</div>
		<div class="collapse navbar-collapse" id="responsive-menu">
			<ul class="nav navbar-nav navbar-left">
				<li><a href="#">About</a></li>
				<li><a href="#">Contacts</a></li>
				<li>
					<form role="search" class="navbar-form">
						<div class="form-group">
							<input type="text" placeholder="Search" class="form-control">
						</div>
					</form>
				</li>
			</ul>
			<sec:authorize access="isAuthenticated()">
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown active "><a class="dropdown-toggle" data-toggle="dropdown">
                    <span class="pull-left" style="margin-right:8px; margin-top:-5px;">
                        <c:choose>
							<c:when test="${dtoUserProfile.photo == null}">
								<p class="initials-logo-navbar">${dtoUserProfile.initial}</p>
							</c:when>
							<c:otherwise>
                        <img src="${photo}"
							 class="img-responsive img-circle" title="UserName"
							 alt="UserName" width="30px" height="30px"/>
							</c:otherwise>
						</c:choose>
                    </span>
						<span>${dtoUserProfile.name}</span>
						<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li>
								<div class="navbar-content">
									<form id="logoutForm" method="POST" action="${contextPath}/logout">
										<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
									</form>
									<div class="row">
										<div class="col-md-5 col-xs-5">
											<c:choose>
												<c:when test="${dtoUserProfile.photo == null}">
													<p class="initials-logo-navbar-middle">${dtoUserProfile.initial}</p>
												</c:when>
												<c:otherwise>
													<img src="${photo}"
														 alt="AltText" class="img-responsive img-rounded"
														 width="120px" height="120px"/>
												</c:otherwise>
											</c:choose>
										</div>
										<div class="col-md-7 col-xs-7" style="margin-left: -35px">
											<div class="container">
												<div>Welcome back,<strong> ${dtoUserProfile.name}!</strong></div>
												<div class="container"
													 style="margin-top:5px; font-size: 15px; font-weight: 500">
													<ul class="non-marker">
														<li><a href="#"><span class="fa fa-user-o"
																			  aria-hidden="true"
																			  style="margin-right: 5px"></span>My
															account</a></li>
														<li><a href="#"><span class="fa fa-star" aria-hidden="true"
																			  style="margin-right: 5px"></span>Favourites</a>
														</li>
														<li><a href="#"><span class="fa fa-question-circle-o"
																			  style="margin-right: 5px"></span>Help</a>
														</li>

														<li><a href="#"
															   onclick="document.forms['logoutForm'].submit()"
															   class="btn btn-success btn-md"
															   style="margin-top: 5px"><span class="fa fa-sign-out"
																							 aria-hidden="true"></span>Sign
															Out</a></li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
							</li>
						</ul>
					</li>
				</ul>
			</sec:authorize>
		</div>
	</div>
</div>

<div class="container col-xs-12">
	<div class="row">
		<!-- /PRICE ITEM -->
		<div class="col-xs-12 col-md-7 col-md-offset-1 col-lg-8">
			<!--Project name and goal-->
			<div class="item">
				<div class="thumbnail">
					<c:choose>
						<c:when test="${project.desc.image == null}">
							<img src="http://placehold.it/800x450" alt="" class="img-responsive">
						</c:when>
						<c:otherwise>
							<img class="img-responsive big-photo"
								 src="${photo}" alt=" big photo"/></c:otherwise>
					</c:choose>
					<div class="caption">
						<h3>${project.desc.name}</h3>
						<p>${project.desc.goal}</p>
					</div>

				</div>

			</div>
			<!--Description-->
			<div class="item">
				<div class="thumbnail">
					<div class="caption">
						<h3>Project description</h3>
						<hr>
						<p>${project.desc.description}</p>
					</div>
				</div>
			</div>
			<!--Category-->
			<div class="item">
				<div class="thumbnail">
					<div class="caption">
						<h3>Category</h3>
						<hr>
						<p>${project.category}</p>
					</div>
				</div>
			</div>
			<%--Other--%>
			<div class="item">
				<div class="thumbnail">
					<div class="caption">
						<h3>Other</h3>
						<hr>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
							ut
							labore
							et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
							laboris
							nisi
							ut
							aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate
							velit
							esse
							cillum dolore eu fugiat nulla pariatur.</p>
					</div>
				</div>
			</div>
			<%--Investments--%>
			<c:if test="${pageContext.request.userPrincipal.name == project.owner.email}">
				<div class="item">
					<div class="thumbnail">
						<div class="caption">
							<h3>Investments</h3>
							<hr>
							<ul>
								<c:forEach items="${project.investments}" var="investment">
									<li>
										Investor:
										<a href="user/${investment.investor.id}">
												${investment.investor.name} ${investment.investor.lastName},
										</a>
										Date: ${investment.dateOfInvestment},
										Sum: ${investment.sum}, Paid: ${investment.paid}, Verified: ${investment.verified};

									</li>
								</c:forEach>
							</ul>

						</div>
					</div>
				</div>
			</c:if>

			<!--Window of investments for small displays-->
			<div class="item">
				<div class="hidden-lg hidden-md">
					<!-- PRICE ITEM -->
					<div class="panel price panel-danger">
						<div class="panel-heading  text-center">
							<h4><strong>Min investment</strong> $${project.desc.minInvestment}</h4>
						</div>
						<div class="panel-body text-center">
							<h4>Total project investment $${project.desc.cost}</h4>
							<div class="progress">
								<div class="progress-bar progress-bar-info"
									 style="width: ${ivnProgress}%"></div>
							</div>
							<h4 class="text-right">Project need $${investedAmount}</h4>
						</div>
						<div class="panel-footer">
							<button type="button" class="btn btn-success btn-block" data-toggle="modal"
									data-target="#modal-invest">I
								want to invest
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-3 col-md-offset-8 col-lg-offset-9 col-lg-2 hidden-sm hidden-xs " style="position: fixed">
			<div class="item">

				<!-- PRICE ITEM -->
				<div class="panel price panel-danger">
					<div class="panel-heading">
						<h4><strong>Min investment</strong></h4>
						<h3 class="text-right">$${project.desc.minInvestment}</h3>
					</div>
					<div class="panel-body text-right">

						<h5>Total project investment $${project.desc.cost}</h5>
						<div class="progress">
							<div class="progress-bar progress-bar-info"
								 style="width: ${ivnProgress}%"></div>
						</div>
						<h5>Project need $${project.desc.cost-investedAmount}</h5>
					</div>
					<div class="panel-footer">
						<button type="button" class="btn btn-success btn-block" data-toggle="modal"
								data-target="#modal-invest">I
							want to invest
						</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="row">

		<div class="footer">
			<div class="container">
				<div class="row centered">
					<a href="#"><span class="fa fa-twitter"></span></a>
					<a href="#"><span class="fa fa-facebook"></span></a>
					<a href="#"><span class="fa fa-vk"></span></a>
				</div>
			</div>
		</div>
	</div>

</div>

<!--Modal-->
<div class="modal fade" id="modal-invest">
	<div class="modal-dialog">
		<div class="modal-content ">
			<div class="modal-header">
				<button class="close" type="button" data-dismiss="modal">
					<span class="fa fa-close"></span>
				</button>
				<h4 class="modal-title">Invest in project: "${project.desc.name}".</h4>
			</div>
			<div class="modal-body text-center">
				<p>Thank you for your interest in our project!</p>
				<p>To be able to invest you have to be logged in and have money <span class="fa fa-smile-o"></span>.
				</p>
				<p>Pressing Next you agree with our terms and policy.</p>
			</div>
			<div class="modal-footer">
				<button class="btn btn-danger pull-right" type="button" data-dismiss="modal">Cancel</button>
				<a href="/project/${project.id}/investment/add" class="btn btn-success pull-right" type="submit">Next</a>
			</div>
		</div>
	</div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.js"></script>
<script src="${contextPath}/resources/js/salvattore.min.js"></script>
</body>
</html>