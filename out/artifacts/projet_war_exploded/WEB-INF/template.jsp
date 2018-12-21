<jsp:useBean id="content" class="java.lang.String" scope="request"/>
<!DOCTYPE html>
<html>
<head>
    <title><%= application.getInitParameter("title")%></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
    <link href="../bootstrap/css/bootstrap.css" rel="stylesheet">
    <!-- styles -->
    <link href="../css/styles.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div class="header">
    <div class="container">
        <div class="row">
            <div class="col-md-5">
                <!-- Logo -->
                <div class="logo">
                    <h1><a href="/"><%= application.getInitParameter("title")%></a></h1>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="page-content">
    <div class="row">
        <div class="col-md-2">
            <jsp:include page="<%= getServletConfig().getServletContext().getInitParameter("entetedepage")%>" />
        </div>
        <div class="col-md-10">
            <jsp:include page="<%=content%>"/>
        </div>
    </div>
</div>

<footer>
    <jsp:include page="<%= getServletConfig().getServletContext().getInitParameter("pieddepage")%>"/>
</footer>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://code.jquery.com/jquery.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="../bootstrap/js/bootstrap.min.js"></script>
<script src="../js/custom.js"></script>
</body>
</html>