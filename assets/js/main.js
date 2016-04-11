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
			var h = $('#content').height();
			$('.navbar').height(h);
		}
	}
	base.dropFunction();
	base.requisitosToogle();
	base.copyHeight();
});