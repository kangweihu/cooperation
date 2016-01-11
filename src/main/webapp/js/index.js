$(document).ready(function() {
	$("#loginButton").click(function() {
		cache: false, $.ajax({
			type : "POST",
			url : "/wlp/longin",
			data : $('#loginForm').serialize(),
			success : function(data) {
				goTo('content.html');
			}
		});
	});

});