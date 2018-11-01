<%--
  Created by IntelliJ IDEA.
  User: JangSinyu
  Date: 2018/10/29
  Time: 16:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="/js/jquery-1.11.3.min.js"></script>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui/themes/icon.css">
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-easyui/jquery.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-easyui/jquery.easyui.min.js"></script>
    <script>
        $(function () {
            //通过 getjson异步加载json数据
            $.getJSON("json/class_1.js", function(json){
                //dom对象如何转换为jquery对象  $()
                $(json).each(function(i,data){
                    console.log(data)
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
                $(json).each(function (i,data) {
                    $("#class2_select_id").append('<option value="'+data.id+'">'+data.flmch2+'</option>');
                })
            })

            //加载品牌
            $.getJSON("json/tm_class_1_"+flbh1+".js",function(json){
                //使用  empty（）方法清空 option select标签中的内容
                $("#tm_select_id").empty();
                $(json).each(function (i,data) {
                    $("#tm_select_id").append('<option value="'+data.id+'">'+data.ppmch+'</option>');
                })
            })
        }
        
        
        
        function toAddSpuPage() {
            var flbh1 = $("#class1_select_id").val();
            var flbh2 = $("#class2_select_id").val();
            var ppId = $("#tm_select_id").val();
            location.href="/toAddSpuPage.do?flbh1="+flbh1+"&flbh2="+flbh2+"&ppId="+ppId;
        }
    </script>
    <title>Title</title>
</head>
<body>
    一级
    <select id="class1_select_id" onchange="load_class2_tm(this.value)" style="width:100px;">
        <option>请选择</option>
    </select><br><br>
    二级
    <select id="class2_select_id" style="width:100px;">
        <option>请选择</option>
    </select><br><br>
    品牌
    <select id="tm_select_id" style="width:100px;">
        <option>请选择</option>
    </select>
    <hr>
    <a href="javascript:toAddSpuPage()">添加</a>
</body>
</html>
