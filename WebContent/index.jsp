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
			data:{fullname:fullname},
			url:'AjaxController',
			success:function(result){
				$('#result1').html(result);
			}
			
			
		});
	});
});

</script>
</head>
<body>
	<form>
		<input type="text" id="fullname">
		<input type="button" id="bttHello" value="Hello">
		<br/>
		<span id="result1"></span>
	</form>
</body>
</html>