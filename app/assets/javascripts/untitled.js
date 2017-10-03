// photo modal
$(document).ready(function () {
	$('#myModal').on('show.bs.modal', function (e) {
		var image = $(e.relatedTarget).attr('src');
		var id = $(e.relatedTarget).attr('id');
		$(".img-responsive").attr("src", image);
		$(".img-responsive").attr("id", id);
		$('body').addClass("modal-open-noscroll");
	});
});

function plusDivs(n) {
	var arr = toArray();
	// replace modal src with next src
	var curPos = arr.indexOf($('.img-responsive').attr('src'));
	var nextSrc = arr[curPos+n];
	$('.img-responsive').attr('src', nextSrc);
}
function toArray() {
	var arr = [];
	var ph = document.getElementsByClassName("mySlides");
	for(var i=0;i<ph.length;i++) {
		arr.push(ph[i].src.substring(getPosition(ph[i].src,'/',3)));
	}
	return arr;
}
function getPosition(string, subString, index) {
   return string.split(subString, index).join(subString).length;
}

// about me
$(document).ready(function() {
	// navigation click actions	
	$('.scroll-link').on('click', function(event){
		event.preventDefault();
		var sectionID = $(this).attr("data-id");
		scrollToID('#' + sectionID, 650);
	});
});
// scroll function
function scrollToID(id, speed){
	var offSet = 50;
	var targetOffset = $(id).offset().top - offSet;
	var mainNav = $('#main-nav');
	$('html,body').animate({scrollTop:targetOffset}, speed);
	if (mainNav.hasClass("open")) {
		mainNav.css("height", "1px").removeClass("in").addClass("collapse");
		mainNav.removeClass("open");
	}
}
if (typeof console === "undefined") {
	console = {
		log: function() { }
	};
}
// delete photo
function delete_photo(id) {
	console.log(id);
	var r = confirm('Delete photo?');
	if(r==true) {
		location.href = '/photos/destroy/'+id;
	} else {

	}
}