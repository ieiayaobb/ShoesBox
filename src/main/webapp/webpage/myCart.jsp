<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    
    <title>My JSP 'footer.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <style type="text/css">
        #cart{
            margin-left:20%;
            margin-top:30px;
        }
        #cart table{
            border:solid 1px lightgreen;
            text-align:center;
            margin-top:3px;
        }
        #cart table th{
            width:150px;
            height:25px;
            line-height:25px;
            background-color: lightgreen;
        }
        
        #cart table td{
            width:150px;
            height:25px;
            line-height:25px;
        }
    </style>
    <script type="text/javascript">
        function deleteOrder(ordersid){
        	if(confirm("��ȷ��Ҫ�ӹ��ﳵ�Ƴ�����Ʒ��")){
        		window.location.href="<%=request.getContextPath()%>/common/deleteOrders.action?orderss.orderid="+ordersid;
        	}
        }
    </script>
  </head>
  
  <body style="text-align:center;font-size:10pt;">
        <div id="cart">
            <table border="0">
            <tr><th>��ƷͼƬ</th><th>��Ʒ����</th><th>��Ʒ�۸�</th><th>����ʱ��</th><th>����</th></tr>
            	<s:iterator value="cartList">
                <tr>
                	<td><img src="../webpage/img/<s:property value='%{goods.goodsPicture}'/>" style="width:120px;height:100px;"/></td>
                    <td><s:property value="%{goods.goodsName}"/></td>
                    <td><s:property value="%{goods.limitPrice}"/></td>                   
                    <td>
                        <s:date format="yyyy-MM-dd" name="%{addTime}"/>
                    </td>
                    <td><input type="button" value="ɾ��" style="width:80px;height:25px;" onclick="deleteOrder('<s:property value="%{orderid}"/>')"/></td>
                </tr>
                </s:iterator>
        </table>
        </div>
        <div id="operate" style="align:right;width:100%;margin-top:5px;margin-left:500px;">
            <label style="margin-right:490px;font-size:20px;color:green;">�ܼۣ���<font color="red" size="6"><b><s:property value="%{totalPrice}"/></b></font></label><br/>
            <label>
                <a href="<%=request.getContextPath()%>/common/confirmInfo.action?order.orderPrice=<s:property value="%{totalPrice}"/>"><img src="../webpage/image/count.gif"/></a>
            </label>
        </div>
  </body>
</html>
