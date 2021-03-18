<%--
  Created by IntelliJ IDEA.
  User: 46724
  Date: 2021/3/16
  Time: 14:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
    <link rel="stylesheet" type="text/css" href="./layui/css/layui.css">
    <style>
        html,body{
            width: 100%;
            height: 100%;
        }

        .layui-bg-cyan{height:100%;width:100%;position: absolute; }
        .layui-form{ position: absolute;top: 50%;left: 50%;transform:translate(-50%,-50%);width: 500px}
    </style>
</head>
<body>


            <div class="layui-bg-cyan">
            <script src="./layui/layui.js"></script>
            <form class="layui-form"  action="doLogin.jsp" method="post">
                <div class="layui-inline">
                <div class="layui-form-item">
                    <label class="layui-form-label">用户名</label>
                    <div class="layui-input-block" >
                        <input type="text" name="username" required  lay-verify="required" placeholder="请输入用户名" autocomplete="off" class="layui-input">
                    </div>
                </div>
                </div>
                <div class="layui-inline">
                <div class="layui-form-item"  name="password">
                    <label class="layui-form-label">密码框</label>
                    <div class="layui-input-inline">
                        <input type="password" name="password" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
                    </div>
                </div>
                    </div>
                <div class="layui-inline">
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
                        <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                    </div>
                </div>
                    </div>
            </form>
            <%--<script>--%>
            <%--    //Demo--%>
            <%--    layui.use('form', function(){--%>
            <%--        var form = layui.form;--%>

            <%--        //监听提交--%>
            <%--        form.on('submit(formDemo)', function(data){--%>
            <%--            layer.msg(JSON.stringify(data.field));--%>
            <%--            return false;--%>
            <%--        });--%>
            <%--    });--%>
            <%--</script>--%>
                </div>

</body>
</html>
