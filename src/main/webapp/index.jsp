<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Autocomplete will be here</title>
<link rel="stylesheet" href="css/jquery-ui-1.11.4.css">
<script type='text/javascript' src='dwr/engine.js'></script>
<script type='text/javascript' src='dwr/interface/dwrMgr.js'></script>
<script type="text/javascript" src="js/jquery-1.10.2.js"></script>
<script type="text/javascript" src="js/jquery-ui-1.11.4.js"></script>
</head>
<body>
  <label>Word: </label>
  <input type="text" class="autocomplete">
  <script type="text/javascript">
			$(function() {
				$('.autocomplete').autocomplete({
					minLength : 1,
					source : function(request, response) {
						var input = request.term;
						dwrMgr.getWords(input, function(list) {
							console.log(list);
							response(list);
						});
					}
				});
			});
		</script>
</body>
</html>