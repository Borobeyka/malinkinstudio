$(document).ready(function()
{
	$("body").removeClass("load");

	$("a[href*=\"#\"]").click(function() {
		$("html, body").animate({
			scrollTop: $($.attr(this, "href")).offset().top
		}, 1000);
	});

	var currentSlideNum = 1;
	var countSlides = $(".items").length;
	var currentSlide = $(".items:first-child");
	var fadeTime = 500;

	$("#portfolio-right").click(function() {
		currentSlide.animate({
			opacity: "0"
		}, fadeTime);
		currentSlide.css("display","none");
		currentSlide = currentSlide.next();
		currentSlideNum++;
		if(currentSlideNum > countSlides)
		{
			currentSlideNum = 1;
			currentSlide = $(".items:first-child");
		}
		currentSlide.css({"display":"block", "opacity":"0"});
		currentSlide.animate({
			display: "block",
			opacity: "1"
		}, fadeTime);
	});
	$("#portfolio-left").click(function() {
		currentSlide.animate({
			opacity: "0"
		}, fadeTime);
		currentSlide.css("display","none");
		currentSlide = currentSlide.prev();
		currentSlideNum--;
		if(currentSlideNum == 0)
		{
			currentSlideNum = countSlides;
			currentSlide = $(".items:last-child");
		}
		currentSlide.css({"display":"block", "opacity":"0"});
		currentSlide.animate({
			display: "block",
			opacity: "1"
		}, fadeTime);
	});

	$("#form_review").submit(function() {
		var packet = {};
		$.each($('#form_review').serializeArray(), function() {
    		packet[this.name] = this.value;
    	});
		$.ajax({
			url: '/handlers/insert.php',
			cache: false,
			type: 'POST',
            dataType: 'json',
            data: JSON.stringify(packet),
			success: function(data)
			{
				$("#review_result").text(data);
			}
		});
		return false;
	});
});