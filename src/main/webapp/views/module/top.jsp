<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
	<style type="text/css">
		@import url('https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Hi+Melody&family=Nanum+Gothic+Coding:wght@400;700&family=Nanum+Pen+Script&display=swap');
		html, body {
			width: 100%; height:100%;
			margin: 0;
			padding: 0;
			overflow: hidden;
		}
		#top1 {
			position: fixed; top: 0px;
			width: 100%; height: 54px;
			background: white;
			font-size: 50px;
			font-family: 'Nanum Pen Script', cursive;
			text-align: center;
		}
		#top1 > a {
			text-decoration: none;
			color: black;
		}
		#top1 > #log {
			position: fixed;
			top: 10px; right: 30px;
			display: inline;
			float: right;
			font-size: 28px;
		}
		#top1 > #log > a {

			text-decoration: none;
		}
		#top2 {
			position: fixed; top: 55px;
			width: 100%; height: 54px;
			background: white;
			border-top: 1px solid black;
			border-bottom: 1px solid black;
			text-align: center;
		}
		#tap2 > ul {
			display: block;
			margin: 0 auto;
			list-style-type: none;
			text-align: center;
			
		}
		#top2 > ul > li {
			display: inline-block;
			height: 48px;
			margin: 0 25px;
			font-size: 24px; font-family: 'Hi Melody', cursive;
		}
		#top2 > ul > li > a {
			text-decoration: none;
		}
		#top2 > #log_msg {
			position: fixed;
			top: 68px; right: 30px;
			display: inline;
			float: right;
			font-size: 20px;
		}
		#wrap {
			position: fixed; top: 110px;
			overflow: hidden;
			width: 100%;
		}
	</style>
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script type="text/javascript">
		$(function(){
			var h = $(window).height() - ($('#top1').height() + $('#top2').height() + $('#footer').height());
			$('#wrap').css('height', h);
			$('#map').css('height', h);
		});
	</script>
</head>
<body>
	<div id="top1">
		<a href="index.do">๋์กฐ์ ํซ</a>
		<div id="log">
		<%
			String id = (String)session.getAttribute("id");
		
			if(id != null){
				out.print("<a href=\"getUser.do?id="+id+"\">๊ณ์?์?๋ณด</a>&nbsp&nbsp&nbsp<a href=\"logout.do\">๋ก๊ทธ์์</a>");
			}else{
				out.print("<a href=\"insertUser.do\">ํ์๊ฐ์</a>&nbsp&nbsp&nbsp<a href=\"login.do\">๋ก๊ทธ์ธ</a>");
			}
		%>
		</div>
	</div>
	<div id="top2">
		<ul>
			<li><a href="getImageList.do">์ด๋ฏธ์ง</a></li>
			<li>์์</li>
			<li>๊ฑด๊ฐ</li>
			<li>๋ณ์</li>
			<li>์นดํ</li>
			<li>๋ณดํธ์</li>
			<li>์ปค๋ฎค๋ํฐ</li>
			<li><a href="hotel.do">ํ์</a></li>
			<li><a href="getUserList.do">์?์? ๋ฆฌ์คํธ</a></li>
		</ul>
		<div id="log_msg">
		<%
			if(id != null){
				out.print(id+"๋ ์๋ํ์ธ์");
			}else{
				out.print("๋ก๊ทธ์ธ ํ์ธ์");
			}
		%>
		</div>
	</div>
	<div id="wrap">
</body>
</html>