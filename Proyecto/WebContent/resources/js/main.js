src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"
function delet(param1,param2,param3,param4){
	var c = document.getElementById("can")
	var este = {
			"id" : param1,
			"modelo" : param2,
			"precio" : param3,
			"img" : param4,
			"cantidad" : c
	}
	$.ajax({
		type : "POST",
	       contentType : "application/json",
	       url : "${pageContext.request.contextPath}/loadCityByCountry",
	       data : JSON.stringify(este),
	       dataType : 'json',
	       success : function(data) {
        	var resolver = JSON.stringify(data);
        	alert(resolver);
        	console.log(resolver);
            },
            error: function (e) {
    	        console.log(e);
    	    },
    	    done : function(e) {
                console.log("DONE");
            }
    });
}