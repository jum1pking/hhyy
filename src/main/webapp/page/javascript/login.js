$(function() {
	$(":button").click(function() {
		doLogin();
	});
	$("html").die().live("keydown", function(event) {
		if (event.keyCode == 13) {
			doLogin();
		}
	});
});


function blockToast(){
	document.getElementById("toast").style.display="block";
}