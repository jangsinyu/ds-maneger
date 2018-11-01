<%--
  Created by IntelliJ IDEA.
  User: JangSinyu
  Date: 2018/10/30
  Time: 15:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui/themes/icon.css">
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-easyui/jquery.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-easyui/jquery.easyui.min.js"></script>
    <script src="/js/jquery-1.11.3.min.js"></script>
    <script>
        $(function () {
            //通过 getjson异步加载json数据
            $.getJSON("json/class_1.js", function(json){
                //dom对象如何转换为jquery对象  $()
                $(json).each(function(i,data){
                    $("#class1_select_id").append('<option value="'+data.id+'">'+data.flmch1+'</option>');
                })
            });
        })


        //异步加载
        function load_class2_tm(flbh1){

            //加载class2
            $.getJSON("json/class_2_"+flbh1+".js",function(json){
                //使用  empty（）方法清空 option select标签中的内容
                $("#class2_select_id").empty();
                $("#class2_select_id").append('<option>请选择</option>');
                $(json).each(function (i,data) {
                    $("#class2_select_id").append('<option value="'+data.id+'">'+data.flmch2+'</option>');
                })
            })

        }

        function toAddAttrPage() {
            var flbh2 = $("#class2_select_id").val();
            location.href="/toAddAttrPage.do?flbh2="+flbh2;
        }
        
        function loadAttrDiv(flbh2) {
            $.post("/getAttrListByClass2.do", {"flbh2": flbh2}, function(data){
                $("#showAttrDiv").html(data);
            });
        }
    </script>
</head>
<body>
    一级
    <select id="class1_select_id" onchange="load_class2_tm(this.value)" style="width:100px;">
        <option>请选择</option>
    </select><br><br>
    二级
    <select id="class2_select_id" onchange="loadAttrDiv(this.value)" style="width:100px;">
        <option>请选择</option>
    </select><br><br>
    <hr>
    <a href="javascript:toAddAttrPage()">添加</a>
    <div id="showAttrDiv"></div>
</body>
</html>
