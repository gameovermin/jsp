<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<script type="text/javascript">
		$(function() {
			/* Clicktop을 눌렀을 때 
			함수 scrolltop:0을 줘서 화면 맨 위로 가게 함*/
			$('.Clicktop').click(function() {
				$('body,html').animate({
					'scrollTop':0
				}, 1500)
			})
			$('body section').each(function(i,e){
				spotarr.puch($(e).offset().top)
			})
			$(window).scroll(function(){
				var sct = $(window).scrollTop()
				
				$('body section').each(function(i,e){
					bg(sct)
				})
				
			})
			
			$(window).trigger('scroll')
			
			function bg(x){
				if(x > 200){
					$('.Clicktop').css({
						'opacity':'1'
					})
				}
				else{
					$('.Clicktop').css({
						'opacity':'0'
					})
				}
			}
		$('.Clicktop').on({
			mouseenter:function(){
				$(this).css({
					'background-color':'#e2d056'
				})
				
			},
			mouseleave:function(){
				$(this).css({
					'background-color':'#000'
				})
			}
			
		})
		})
	</script>
	<style>
		.Clicktop{
		width: 50px;
		height: 50px;
		background-color: #000;
		color: #fff;
		border-radius: 25px;
		text-align: center;
		line-height: 50px;
		position: fixed;
		z-index: 999999;
		top: 100%;
		opacity: .8;
		cursor: pointer;
		font-size: 14px;
		right: 0.6%;
		margin-left: -160px;
		margin-top: -89px;
		}
		.Clicktop:hover{
			transition:all.3s ease-out;
		}
	</style>
	<div class="Clicktop">
		<span>TOP</span>
	</div>
</body>
</html>