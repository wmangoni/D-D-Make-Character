$(document).ready(function() {
	'use strict';
	var base = {
		dropFunction: function(){

			$('.input-group-btn .dropdown-menu a').bind('click',function(){
				var text = $(this).text();
				$(this).closest('.input-group').find('input').val(text);

				if($('input[name=tipo]').val() == 'Prestígio' || text == 'Épica'){
					$('#requisitos').slideDown(400);
				} else {
					$('#requisitos').slideUp(400);
				}
			});

		},
		requisitosToogle: function(){
			$('td').on('click', 'big', function(){
				var dataId = $(this).data('id');
				$(".panel-body .classe"+dataId).slideToggle(400);
			});
		},
		copyHeight: function(){
			if(window.outerWidth > 1100){
				var h = $('#content').height();
				$('.nav-lateral').height(h);
			}
		},
		resetSenha: function(){
			$(document).ready(function () {
				$('.forgot-pass').click(function(event) {
					$(".pr-wrap").toggleClass("show-pass-reset");
				}); 

				$('.pass-reset-submit').click(function(event) {
					$(".pr-wrap").removeClass("show-pass-reset");
				}); 
			});
		},
		barsChart: function(){
			barChart();

			$(window).resize(function(){
				barChart();
			});

			function barChart(){
				$('.bar-chart').find('.item-progress').each(function(){
					var itemProgress = $(this),
					itemProgressWidth = $(this).parent().width() * ($(this).data('percent') / 100);
					itemProgress.css('width', itemProgressWidth);
				});
			};
		},
	}


	base.dropFunction();
	base.requisitosToogle();
	base.copyHeight();

	$(window).resize(function(){
		base.copyHeight();
	});

	base.resetSenha();
	base.barsChart();
});