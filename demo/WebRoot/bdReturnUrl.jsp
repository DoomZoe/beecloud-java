<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	/* *
	 功能：支付完成后同步跳转至本页面
	 版本：1.0
	 日期：2015-09-22
	 说明：
	 以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
	 该代码仅供学习和研究百度支付接口使用，只是提供一个参考。
	 * */
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; UTF-8">
<title>BaiDu Page Url</title>
</head>
<body>
	<%
		String payResult = request.getParameter("pay_result");
		if(payResult != null) {
			if (payResult.equals("1")) {
				//成功逻辑
				out.println("<h3>百度网页支付成功，商户应自行实现成功逻辑！</h3>");
			} else {
				out.println("<h3>百度网页支付未成功，商户应自行实现失败逻辑！</h3>");
			}
		} else {
			out.println("<h3>百度网页支付未收到同步通知，商户应自行实现逻辑！</h3>");
		}
			
	%>
</body>
</html>