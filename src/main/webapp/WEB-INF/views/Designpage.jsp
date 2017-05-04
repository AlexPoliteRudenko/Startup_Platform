<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>GreatStart</title>

    <link rel="shortcut icon" href="${contextPath}/resources/img/favicon.png" type="image/x-icon">
    <link href="${contextPath}/resources/css/bootstrap.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/font-awesome.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/main.css" rel="stylesheet">

    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
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
            <a class="navbar-brand" href="#">Great<i class="fa fa-rocket fa-lg" aria-hidden="true">
                <text/>
            </i>Start </a>
        </div>
        <div class="collapse navbar-collapse" id="responsive-menu">
            <ul class="nav navbar-nav navbar-left">
                <li class="active"><a href="#">Home</a></li>
                <li><a href="#">About</a></li>
                <li><a href="#">Events</a></li>
                <li><a href="#">Projects</a></li>
                <li>
                    <form role="search" class="navbar-form navbar-left">
                        <div class="form-group">
                            <input type="text" placeholder="Search" class="form-control">
                        </div>
                    </form>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li class="active"><a href="#modal-login" data-toggle="modal">Login</a></li>
            </ul>
        </div>
    </div>
</div>
<div class="header-wrap">
    <div class="container">
        <div class="row centered">
            <div class="col-lg-8 col-lg-offset-2">
                <h1 class="title">GreatStart is awesome!</h1>
                <h2 class="under-title">Join us</h2>
            </div>
        </div>
    </div>
</div>
<div class="container column-wrap">
    <div class="row centered">
        <div class="col-lg-4 col-md-4 col-sm-4">
            <i class="fa fa-lightbulb-o fa-3x"></i>
            <h4>Ideas</h4>
            <div><strong>Just Text Example</strong></div>
            <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et
                dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
                ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
                fugiat nulla pariatur.
            </div>
        </div>
        <div class="col-lg-4 col-md-4 col-sm-4">
            <i class="glyphicon glyphicon glyphicon-grain gi-3x"></i>
            <h4>Help</h4>
            <div><strong>Just Text Example</strong></div>
            <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et
                dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
                ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
                fugiat nulla pariatur.
            </div>
        </div>
        <div class="col-lg-4 col-md-4 col-sm-4">
            <i class="fa fa-users fa-3x"></i>
            <h4>Projects</h4>
            <div><strong>Just Text Example</strong></div>
            <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et
                dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
                ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
                fugiat nulla pariatur.
            </div>
        </div>
    </div>
</div>

<div class="container">
    <div class="row">
        <div class="container">
            <ul class="nav nav-tabs">
                <li class="active"><a href="#"><h3>Projects</h3></a></li>
            </ul>
        </div>
    </div>
    <div class="row masonry" data-columns>
        <div class="item">
            <div class="thumbnail">
                <div class="caption centered">
                    <a href="#"><h3>Project name</h3></a>
                </div>
                <a href="#"><img src="http://placehold.it/600x340" alt="" class="img-responsive"></a>
                <div class="caption">
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                        labore
                        et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi
                        ut
                        aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                        cillum dolore eu fugiat nulla pariatur.</p>
                    <hr>
                    <div class="row">
                        <div class="col-xs-6">
                            <div>min</div>
                            <div><i class="fa fa-dollar"></i>100000</div>
                        </div>
                        <div class="col-xs-6">
                            <div class="right-box">Still needed</div>
                            <div class="right-box"><i class="fa fa-dollar"></i>9999</div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <div class="item">
            <div class="thumbnail">
                <div class="caption centered">
                    <a href="#"><h3>Project name</h3></a>
                </div>
                <a href="#"><img src="http://placehold.it/600x340" alt="" class="img-responsive"></a>
                <div class="caption">
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                        labore
                        et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi
                        ut
                        aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                        cillum dolore eu fugiat nulla pariatur.</p>
                    <hr>
                    <div class="row">
                        <div class="col-xs-6">
                            <div>min</div>
                            <div><i class="fa fa-dollar"></i>100000</div>
                        </div>
                        <div class="col-xs-6">
                            <div class="right-box">Still needed</div>
                            <div class="right-box"><i class="fa fa-dollar"></i>9999</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="item">
            <div class="thumbnail">
                <div class="caption centered">
                    <a href="#"><h3>Project name</h3></a>
                </div>
                <a href="#"><img src="http://placehold.it/600x340" alt="" class="img-responsive"></a>
                <div class="caption">
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                        labore
                        et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi
                        ut
                        aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                        cillum dolore eu fugiat nulla pariatur.</p>
                    <hr>
                    <div class="row">
                        <div class="col-xs-6">
                            <div>min</div>
                            <div><i class="fa fa-dollar"></i>100000</div>
                        </div>
                        <div class="col-xs-6">
                            <div class="right-box">Still needed</div>
                            <div class="right-box"><i class="fa fa-dollar"></i>9999</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="item">
            <div class="thumbnail">
                <div class="caption centered">
                    <a href="#"><h3>Project name</h3></a>
                </div>
                <a href="#"><img src="http://placehold.it/600x340" alt="" class="img-responsive"></a>
                <div class="caption">
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                        labore
                        et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi
                        ut
                        aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                        cillum dolore eu fugiat nulla pariatur.</p>
                    <hr>
                    <div class="row">
                        <div class="col-xs-6">
                            <div>min</div>
                            <div><i class="fa fa-dollar"></i>100000</div>
                        </div>
                        <div class="col-xs-6">
                            <div class="right-box">Still needed</div>
                            <div class="right-box"><i class="fa fa-dollar"></i>9999</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="container">
            <ul class="nav nav-tabs">
                <li class="active"><a href="#"><h3>Events</h3></a></li>
            </ul>
        </div>
    </div>
    <div class="row masonry" data-columns>
        <div class="item">
            <div class="thumbnail">
                <div class="caption centered">
                    <a href="#"><h3>Event name</h3></a>
                </div>
                <a href="#"><img src="http://placehold.it/600x340" alt="" class="img-responsive"></a>
                <div class="caption">
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                        labore
                        et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
                        nisi
                        ut
                        aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit
                        esse
                        cillum dolore eu fugiat nulla pariatur.</p>
                    <span><a class="btn btn-success btn-block btn-md" href="#">I will go on</a></span>
                </div>

            </div>
        </div>
        <div class="item">
            <div class="thumbnail">
                <div class="caption centered">
                    <a href="#"><h3>Event name</h3></a>
                </div>
                <a href="#"><img src="http://placehold.it/600x340" alt="" class="img-responsive"></a>
                <div class="caption">
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                        labore
                        et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
                        nisi
                        ut
                        aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit
                        esse
                        cillum dolore eu fugiat nulla pariatur.</p>
                    <span><a class="btn btn-success btn-block btn-md" href="#">I will go on</a></span>

                </div>

            </div>
        </div>
        <div class="item">
            <div class="thumbnail">
                <div class="caption centered">
                    <a href="#"><h3>Event name</h3></a>
                </div>
                <a href="#"><img src="http://placehold.it/600x340" alt="" class="img-responsive"></a>
                <div class="caption">
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                        labore
                        et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
                        nisi
                        ut
                        aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit
                        esse
                        cillum dolore eu fugiat nulla pariatur.</p>
                    <span><a class="btn btn-success btn-block btn-md" href="#">I will go on</a></span>
                </div>

            </div>
        </div>
    </div>
</div>

<div class="footer">
    <div class="container">
        <div class="row centered">
            <a href="#"><i class="fa fa-twitter"></i></a>
            <a href="#"><i class="fa fa-facebook"></i></a>
            <a href="#"><i class="fa fa-vk"></i></a>

        </div>
    </div>
</div>
</div>

<div class="modal fade" id="modal-login">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Registration
                    <button class="close" type="button" data-dismiss="modal">
                        <i class="fa fa-close"></i>
                    </button>
                </h4>

            </div>
            <div class="modal-body">
                <form action="" method="POST">
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="login" value="">
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" placeholder="password" value="">
                    </div>
                    <button type="submit" class="btn btn-success">Login</button>

                    <form action="/registration">
                        <button class="btn btn-primary" type="submit">
                            <i class="fa fa-user-circle-o"></i> Create an account
                        </button>
                    </form>

                </form>
            </div>
            <div class="modal-footer">
                <button class="btn btn-danger" type="button" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.js"></script>
<script src="${contextPath}/resources/js/salvattore.min.js"></script>
</body>
</html>