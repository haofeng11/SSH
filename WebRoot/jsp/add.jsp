<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
 
<html> 
	<head>
		<title>JSP for AddForm form</title>
	</head>
	<body>
		<div class="form-group">
    		<label for="danyuanNum">danyuanNum:&nbsp&nbsp</label>
    		<input type="text" class="form-control" id="danyuanNum">
  		</div>
  		<br/><br/>
  		<div class="form-group">
    		<label for="location">location:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label>
    		<input type="text" class="form-control" id="location">
  		</div>
  		<br/><br/>
  		<div class="form-group">
    		<label for="name">name:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label>
    		<input type="text" class="form-control" id="name">
  		</div>
  		<br/><br/>
  		<div class="form-group">
    		<label for="photoURL">photoURL:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label>
    		<input type="file" id="photoURL">
  		</div>
  		<br/><br/>
  		<input class="btn btn-default" type="button" value="Save" onclick="save()">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
  		<input class="btn btn-default" type="button" value="Back" onclick="back()">
  		
    	<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    	<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    	
    	<script>
    		function save() {
    			var reader = new FileReader();
	            reader.readAsDataURL($("#photoURL")[0].files[0]);
	            reader.onload = function (evt) {
	                var fileString = evt.target.result;
	                $.ajax({
	    				url: "/SSH/add.do",
	    				type: "POST",
	    				dataType: "text",
	    				data: {
	    					danyuanNum: $("#danyuanNum").val(),
	    					location: $("#location").val(),
	    					name: $("#name").val(),
	    					photoURL: fileString
	    				},
	    				success: function(result) {
	    					alert(result);
	    					window.location.href="home.jsp";
	    				}
	    			})
	            }
    		}
    		
    		function back() {
    			window.location.href="home.jsp";
    		}
    	</script>
	</body>
</html>

