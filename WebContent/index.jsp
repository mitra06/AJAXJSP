<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Jsp Ajax Example</title>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	
	$('#bttHello').click(function(){
		var fullname=$('#fullname').val();
		$.ajax({
			type:'POST',
			data:{fullname:fullname,
			action:'demo1'	
			},
			url:'AjaxController',
			success:function(result){
				$('#result1').html(result);
			}
			
			
		});
	});
	$('#bttSum').click(function(){
		var number1=$('#number1').val();
		var number2=$('#number2').val();
		$.ajax({
			type:'POST',
			data:{number1:number1,
				number2:number2,	
			action:'demo2'	
			},
			url:'AjaxController',
			success:function(result){
				$('#result2').html(result);
			}
			
			
		});
	});
});

</script>
</head>
<body>
	<form>
		<fieldset>
		<legend>demo1</legend>
		<input type="text" id="fullname">
		<input type="button" id="bttHello" value="Hello">
		<br/>
		<span id="result1"></span>
		</fieldset>
		<fieldset>
		<legend>demo2</legend>
			Number1:<input type="text" id="number1">
			Number2:<input type="text" id="number2">
			
			<input type="button" value="Sum" id="bttSum">
			<br/>
			<span id="result2"></span>
		
		</fieldset>
	</form>
</body>
</html>