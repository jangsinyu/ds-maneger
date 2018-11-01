<%--
  Created by IntelliJ IDEA.
  User: JangSinyu
  Date: 2018/10/29
  Time: 19:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="saveTMallProduct.do" method="post" enctype="multipart/form-data">
        <input type="hidden" name="flbh1" value="${tMallProduct.flbh1}">
        <input type="hidden" name="flbh2" value="${tMallProduct.flbh2}">
        <input type="hidden" name="ppId" value="${tMallProduct.ppId}">
        <table>
            <tr>
                <td>商品名称：</td>
                <td> <input type="text" name="shpMch" style="width:300px;"></td>
            </tr>

            <tr>
                <td>商品描述：</td>
                <td><textarea name="shpMsh" placeholder="请输入商品的详情描述" style="width:300px;height:200px"></textarea></td>
            </tr>
            <tr>
                <td align="right">照片：</td>
                <td><input type="file" name="imgs" style="width:300px;"></td>
            </tr>
            <tr>
                <td align="center" colspan="2"><input type="submit"></td>
            </tr>
        </table>
    </form>
</body>
</html>
