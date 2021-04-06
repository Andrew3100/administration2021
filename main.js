function add() {

	$('#form').
	submit(
		function() {
			$.ajax({
				type: "POST",
				url: "add_script.php",
				data: $(this).serialize()
			}).done(function() {
				$('.spasibo_text').fadeIn();
				$(this).find('input').val('');
				$('#form').trigger('reset');
			});
			// Закрыть попап «спасибо»
			$('.js-close-thank-you').click(function() { // по клику на крестик
				$('.spasibo_text').fadeOut();
			});

			$(document).mouseup(function (e) { // по клику вне попапа
				var popup = $('.popup');
				if (e.target!=popup[0]&&popup.has(e.target).length === 0){
					$('.spasibo_text').fadeOut();
				}
			});
			return false;
		});
	return true;
}
function update() {

	$('#form1').
	submit(
		function() {
			$.ajax({
				type: "POST",
				url: "add_script.php",
				data: $(this).serialize()
			}).done(function() {
				$('.spasibo_text1').fadeIn();
				$(this).find('input').val('');
				$('#form1').trigger('reset');
			});
			// Закрыть попап «спасибо»
			$('.js-close-thank-you').click(function() { // по клику на крестик
				$('.spasibo_text1').fadeOut();
			});

			$(document).mouseup(function (e) { // по клику вне попапа
				var popup = $('.popup');
				if (e.target!=popup[0]&&popup.has(e.target).length === 0){
					$('.spasibo_text1').fadeOut();
				}
			});
			return false;
		});
	return true;
}
$(document).ready(add);
$(document).ready(update);