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
       .tdStyle{
           text-align:right;
           color:grey;
       }
       #detail table td{
           width:180px;
           height:30px;
           line-height:30px;
       }
       #detail .buttons{
           width:120px;
           height:25px;
           line-height:25px;
       }
   </style>
   <script type="text/javascript">
       function rebuy(){
    	   window.location.href="<%=request.getContextPath()%>/common/index.action";
       }
       function shoppingCar(){
    	   var number = document.getElementById("num").value;
    	   var isNumber = checkNum(number);
    	   var nownum = '<s:property value="phone.amount"/>';
    	   var sessionname = '<s:property value="#session.username"/>';
    	   if(sessionname.length==0){
    		   if(confirm("����δ��½�����ȵ�½")){
    			   window.location.href="<%=request.getContextPath()%>/user/showLogin.action"
    		   }
    	   }
    	   else if(!isNumber){
    		   alert("����������Ч������������");
    	   }else if(parseInt(number)<=0){
    		   alert("�����빺�����");
    	   }
    	   else if(parseInt(number)>parseInt(nownum)){
    		   alert("��Ǹ����治��");
    	   }
    	   else{
    		   var form = document.getElementById("comfirm");
    	       form.action = "showShoppingCart.action";
    	       form.submit();
    	   }
    	   
       }
       function checkNum(str)
       {
            return str.match(/\D/)==null;
       }   
   </script>
  </head>
  
  <body style="text-align:center;font-size:10pt;">
    <div id="detail">
        <s:form action="" namespace="/common" method="post" id="comfirm" theme="simple">
            <s:hidden name="phone.phoneid" value="%{phone.phoneid}"/>
            <table border="0">
            <tr><td rowspan="5"><img src="../pictures/<s:property value="phone.picture"/>" style="width:160px;height:150px;"/></td><td class="tdStyle">�ֻ����ƣ�</td><td><s:property value="phone.phonename"/></td></tr>
            <tr><td class="tdStyle">�ֻ��۸�</td><td><s:property value="phone.price"/></td></tr>
            <tr><td class="tdStyle">���������</td><td><s:property value="phone.amount"/></td></tr>
            <tr><td class="tdStyle">��ѡ����Ĺ���������</td><td><s:textfield name="amount" id="num"/></td></tr>
            <tr>
                <td class="tdStyle"><input type="button" value="&lt;&lt;���¹���" class="buttons" onclick="rebuy()"/></td>
                <td><input type="button" value="�����������&gt;&gt;" class="buttons" onclick="shoppingCar()"/></td>
            </tr>
        </table>
        </s:form>
    </div>
  </body>
</html>
