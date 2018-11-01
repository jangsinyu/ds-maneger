<%--
  Created by IntelliJ IDEA.
  User: JangSinyu
  Date: 2018/10/29
  Time: 16:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui/themes/icon.css">
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-easyui/jquery.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-easyui/jquery.easyui.min.js"></script>
    <title>Title</title>
</head>
<body class="easyui-layout">
<div data-options="region:'north',title:'小人常窃窃，君子坦荡荡',split:true" style="height:100px;">
    <center><h1><font color="orange">君子易事而难说，小人易说而难事</font></h1></center>
</div>
<div data-options="region:'west',title:'West',split:true" style="width:100px;">
    <ul id="tt" class="easyui-tree">
        <li>
            <span>Folder</span>
            <ul>
                <li>
                    <span><a href="javascript:toShowPage('跳转至SPU新增页面','/toSpuPage.do')">跳转至SPU新增页面</a></span>
                </li>
                <li>
                    <span><a href="javascript:toShowPage('跳转至Attr新增页面','/toAttrPage.do')">跳转至Attr新增页面</a></span>
                </li>
                <li>
                    <span><a href="javascript:toShowPage('跳转至Sku新增页面','/toSkuPage.do')">跳转至Sku新增页面</a></span>
                </li>
            </ul>
        </li>
    </ul>
</div>
<div data-options="region:'center',title:'center title'" style="padding:5px;background:#eee;">
    <div id="tabs" class="easyui-tabs" data-options="fit:true">
        <div title="Tab1" style="padding:20px;display:none;">
            tab1
        </div>
    </div>
</div>
</body>
<script type="text/javascript">
    function toShowPage(title, url){
        var exists = $('#tabs').tabs('exists',title);
        if(exists){
            $('#tabs').tabs('select',title);
        }else{
            $('#tabs').tabs('add',{
                title:title,
                content:'<iframe style="position:relative;height:100%;width:100%;" frameborder="0" scrolling="true" src="'+url+'"></iframe>',
                closable:true,
                iconCls:'icon-flag-red',
                tools:[{
                    iconCls:'icon-mini-refresh',
                    handler:function(){
                        var tab = $('#tabs').tabs("getSelected");
                        $('#tabs').tabs('update', {tab: tab});
                    }
                }]
            });
        }
    }
</script>
</html>
