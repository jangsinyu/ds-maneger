<%--
  Created by IntelliJ IDEA.
  User: JangSinyu
  Date: 2018/10/31
  Time: 13:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <script src="/js/jquery-1.11.3.min.js"></script>
    <script>
        $(function () {
            var flbh1 = ${flbh1};
            $.getJSON("json/tm_class_1_"+flbh1+".js",function(json){
                //使用  empty（）方法清空 option select标签中的内容
                $("#tm_select_id").empty();
                $(json).each(function (i,data) {
                    $("#tm_select_id").append('<option value="'+data.id+'">'+data.ppmch+'</option>');
                })
            })
        })

        function loadSpuByTmId(ppId) {
            var flbh2 = ${flbh2};
            $.post("/loadSpuByTmId.do",{"flbh2":flbh2,"ppId":ppId},function (result) {
                $("#spu_select_id").empty();
                $(result).each(function (i,data) {
                    $("#sku_select_id").append('<option value="'+data.id+'">'+data.shpMch+'</option>');
                })
            })
        }

    </script>
</head>
<body>
 <form action="/saveSku.do" method="post">
     <input type="hidden" name="flbh1" value="${flbh1}">
     <input type="hidden" name="flbh2" value="${flbh2}">
    <table>
        <tr>
            <td>品牌：</td>
            <td>
                <select id="tm_select_id" onchange="loadSpuByTmId(this.value)">
                    <option>请选择</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>商品：</td>
            <td>
                <select id="sku_select_id" name="shpId">
                    <option>请选择</option>
                </select>
            </td>
        </tr>
        <c:forEach items="${list}" var="attr" varStatus="i">
            <tr>
                <td >
                    <input type="hidden" name="attrValues[${i.index}].shxmId" value="${attr.id}">${attr.shxmMch}
                </td>
                <c:forEach items="${attr.valueList}" var="value">
                    <td>
                        <input type="radio" name="attrValues[${i.index}].shxzhId" value="${value.id}">
                        ${value.shxzh}${value.shxzhMch}
                    </td>
                </c:forEach>
            </tr>
        </c:forEach>
    </table>
     <table>
         <tr>
             <td>sku名称:</td>
             <td><input type="text" name="skuMch"></td>
         </tr>
         <tr>
             <td>价格:</td>
             <td><input type="text" name="jg"></td>
         </tr>
         <tr>
             <td>库存:</td>
             <td><input type="text" name="kc"></td>
         </tr>
         <tr>
             <td>库存地址:</td>
             <td><input type="text" name="kcdz"></td>
         </tr>
         <tr>
             <td align="center" colspan="2"><input type="submit"></td>
         </tr>
     </table>


</form>
</body>
</html>
