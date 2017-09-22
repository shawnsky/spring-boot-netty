<html>
<head>
    <title>login</title>

    <script src="/js/jquery-3.2.1.min.js"></script>
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <script src="/js/bootstrap.min.js"></script>


    <script type="text/javascript">
        $().ready(function () {
            $('#btn').click(function () {
                var $form = $('#loginForm');
                $.ajax({
                    url: $form.attr("action"),
                    type: "post",
                    dataType: "json",
                    data: $form.serialize(),
                    cache: "false",
                    success: function (data) {
                        if (data.status=="0"){
                            window.location.href = "/";
                        } else {
                            $('#error').text(data.msg);
                        }
                    }
                });
                return false;
            })
        });
    </script>

</head>
<body>

<form id="loginForm" action="/loginSubmit" method="post">
    <label>id</label><input type="number" name="id" placeholder="input your id here">
    <br><label>password</label><input type="password" name="password" placeholder="your password">
    <input id="btn" type="button" value="ok">
</form>

<h5 id="error"></h5>



</body>

</html>