<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
<title>Genious Web</title>
<link href="../webpage/style.css" rel="stylesheet" type="text/css" />
<style type="text/css">
 #showPhone table{
     margin-top:-30px;
     text-align:center;
     border:solid 1px grey;
 }
 #showPhone table th{
     height:25px;
     width:120px;
     line-height:25px;
     background-color: grey;
     color:white;
 }
 .btn{
     width:89px;
     height:28px;
     background-image: url(../webpage/image/more.gif);
     line-height:28px;
     text-align:center;
 }
 .button{
     width:100px;
     height:30px;
 }
</style>
<script type="text/javascript">
        function updateGoods(goodsId){
        	if(confirm("��ȷ��Ҫ�޸ģ�")){        	
        		window.location.href="<%=request.getContextPath()%>/admin/showUpdateGoods.action?goodsId="+goodsId;
            }
        }      
        function deleteGoods(goodsId){
        	if(confirm("��ȷ��Ҫɾ����")){
        		window.location.href="<%=request.getContextPath()%>/admin/deleteGoods.action?goodsId="+goodsId;
            }
        }
        
        function addGoods(){
        	window.location.href="<%=request.getContextPath()%>/admin/showAddGoods.action";
        }
</script>
</head>

<body>
<div id="topPan">
	<span style="font-size:20px;margin-right:30px;margin-top:140px;">�����߲ˡ�ʳƷ����̨����</span>
	<ul>
		<li><a href="../webpage/adminIndex.jsp">��ӭ��</a></li>
		<li class="home"><a href="<%=request.getContextPath()%>/admin/managerInfo.action">��������</a></li>
		<li><a href="#">����Ա����</a></li>
		<li><a href="../webpage/adminLogin.jsp">��ȫ�˳�</a></li>
	</ul>
	<ul>
	    <li style="width:300px;margin-top:50px;margin-left:-260px;"><font size="4" color="darkblue">��������&gt;&gt;��Ʒ�б�</font></li>
	    <li style="width:300px;margin-top:40px;margin-left:135px;">
	        <font size="4" color="darkblue">
	            <input type="button" value="��Ӳ�Ʒ" onclick="addGoods()" class="button"/>
	        </font>
	    </li>
	</ul>
</div>
<div id="bodytopmainPan">
<div id="bodytopPan">
	<div id="showPhone">
	    <table border="0">
	    <tr><th>ͼƬ</th><th>��Ʒ����</th><th>��������</th><th>�ּ�</th><th colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;����</th></tr>
	           <s:iterator value="goodsList">
	            <tr>
	               <td><img width="110" height="80" src="../webpage/img/<s:property value="%{goodsPicture}"/>"/></td>
	               <td><s:property value="%{goodsName}"/></td>
	               <td><s:property value="%{peopleNumber}"/>��</td>
	               <td>��<s:property value="%{limitPrice}"/></td>
	               <td>
	                   <div class="btn"><a href="javascript:updateGoods('<s:property value="%{goodsId}"/>')">�޸�</a></div>
	               </td>
	               <td>
	                   <div class="btn"><a href="javascript:deleteGoods('<s:property value="%{goodsId}"/>')">ɾ��</a></div>
	               </td>
	            </tr>
	            </s:iterator>
	    </table>
	</div>
</div>
</div>
</body>
</html>
