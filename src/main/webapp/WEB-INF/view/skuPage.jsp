<%--
  Created by IntelliJ IDEA.
  User: JangSinyu
  Date: 2018/10/31
  Time: 11:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
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

        function toAddSkuPage() {
            var flbh1 = $("#class1_select_id").val();
            var flbh2 = $("#class2_select_id").val();
            location.href="/toAddSkuPage.do?flbh1="+flbh1+"&flbh2="+flbh2;
        }

    </script>
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
    <hr>
    <a href="javascript:toAddSkuPage()">添加</a>
    <div id="showAttrDiv"></div>
</body>
</html>
