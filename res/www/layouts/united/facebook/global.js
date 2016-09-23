// Get later time
$(document).ready(function() {
	
	$("#facebook").hover(
	function(){
		$(this).animate({ right: "0" }, {queue:false, duration:"normal"} );
	},
	function(){
		$(this).animate({ right: "-197" }, {queue:false, duration:"normal"} );
	});
});
//  End -->