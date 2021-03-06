<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>

<html xmlns="http://www.w3.org/1999/xhtml">
<!-- 

  借地写说明：
  jquery-ui的说明参考：http://www.runoob.com/jqueryui/jqueryui-tutorial.html
  jquery的说明参考：http://www.w3school.com.cn/jquery/index.asp
  
  tabs-api为横向的标签，下面定义的div比如tabs-purchase是竖向的标签，按已有的往下添加，名字别重复就行。
  
  新增横向标签：
  1. <div id="tabs-api"><ul><li>下面新加个a标签，指向一个锚点。
  2. 上一条的<ul>同级别下新加一个<div>，id使用上一条锚点指定的id。
  
  新增纵向标签：
  1. js加一行，设置纵向标签的参数。
  2. 总之参考已有的样例吧。
  
-->

<head>
  <meta charset="utf-8">
  <title>订购产品示例</title>
  <link rel="stylesheet" href="static/jquery-ui.min.css">
  <script src="static/jquery-1.11.2.min.js"></script>
  <script src="static/jquery-ui.min.js"></script>
  <script src="static/demo.js"></script>
  <script>
      $(function () {
          setApiDemoTabs("#tabs-consume");
          setApiDemoTabs("#tabs-preauth");
      });
  </script>
  <link rel="stylesheet" href="static/demo.css">

</head>
<body style="background-color:#e5eecc;">
<div id="wrapper">

<div id="header">
<h2>订购产品示例</h2>

</div>

<div id="tabs-api">
  <ul>
    <li><a href="#tabs-api-1">前言</a></li>
    <li><a href="#tabs-api-2">消费样例</a></li>
    <li><a href="#tabs-api-3">预授权样例</a></li>
    <li><a href="#tabs-api-4">常见开发问题</a></li>
  </ul>
  
  <div id="tabs-api-1">
    <jsp:include  page="/pages/introduction.jsp"/>
  </div>
  
  <div id="tabs-api-4">
    <jsp:include  page="/pages/devlopHelp.jsp"/>
  </div>
  
  <div id="tabs-api-2">
	<div id="tabs-consume">
	  <ul>
	    <li><a href="#tabs-consume-1">说明</a></li>
	    <li><a href="pages/realAuth_back.jsp">实名认证</a></li>
	    <li><a href="pages/consume.jsp">消费</a></li>
	    <li><a href="pages/consumeUndo.jsp">消费撤销</a></li>
	    <li><a href="pages/refund.jsp">退货</a></li>
		<li><a href="pages/query.jsp">交易状态查询</a></li>
		<li><a href="pages/file_transfer.jsp">对账文件下载</a></li>
   		<!-- 业务上已废弃 
	    <li><a href="pages/realAuth_front.jsp">实名认证（前台）</a></li>
	    -->
	  </ul>
	  <div id="tabs-consume-1">
	     <jsp:include  page="/pages/consume_intro.jsp"/>
	  </div>
	</div>
  </div>

  <div id="tabs-api-3">
	  <div id="tabs-preauth">
		  <ul>
		    <li><a href="#tabs-preauth-1">说明</a></li>
		    <li><a href="pages/realAuth_back.jsp">实名认证</a></li>
		    <li><a href="pages/preauth.jsp">预授权</a></li>
		    <li><a href="pages/preauthUndo.jsp">预授权撤销</a></li>
		    <li><a href="pages/preauthFinish.jsp">预授权完成</a></li>
		    <li><a href="pages/preauthFinishUndo.jsp">预授权完成撤销</a></li>
		    <li><a href="pages/refund.jsp">退货</a></li>
			<li><a href="pages/query.jsp">交易状态查询</a></li>
			<li><a href="pages/file_transfer.jsp">对账文件下载</a></li>
   			<!-- 业务上已废弃 
		    <li><a href="pages/realAuth_front.jsp">实名认证（前台）</a></li>
		    -->
		  </ul>
		  <div id="tabs-preauth-1">
		     <jsp:include  page="/pages/preauth_intro.jsp"/>
		  </div>
		</div>
	  </div> <!-- end of tabs-api-3-->
  
  </div> <!-- end of tabs-api-->
</div><!-- end of wrapper-->
 
 
</body>
</html>