<%--
  Created by IntelliJ IDEA.
  User: JangSinyu
  Date: 2018/10/30
  Time: 15:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="saveAttr.do" method="post">
        <input type="hidden" name="flbh2" value="${flbh2}">
        <table border="1">
            <tr>
                <td>属性名称：<input type="text" name="attrList[0].shxmMch"></td>
                <td></td>
            </tr>
            <tr>
                <td>属性值：<input type="text" name="attrList[0].valueList[0].shxzh"></td>
                <td>属性值名：<input type="text" name="attrList[0].valueList[0].shxzhMch"></td>
            </tr>
            <tr>
                <td>属性值：<input type="text" name="attrList[0].valueList[1].shxzh"></td>
                <td>属性值名：<input type="text" name="attrList[0].valueList[1].shxzhMch"></td>
            </tr>
        </table>
        <table border="1">
            <tr>
                <td>属性名称：<input type="text" name="attrList[1].shxmMch"></td>
                <td></td>
            </tr>
            <tr>
                <td>属性值：<input type="text" name="attrList[1].valueList[0].shxzh"></td>
                <td>属性值名：<input type="text" name="attrList[1].valueList[0].shxzhMch"></td>
            </tr>
            <tr>
                <td>属性值：<input type="text" name="attrList[1].valueList[1].shxzh"></td>
                <td>属性值名：<input type="text" name="attrList[1].valueList[1].shxzhMch"></td>
            </tr>
            <tr>
                <td align="center" colspan="2"><input type="submit"></td>
            </tr>
        </table>

    </form>

</body>
</html>
