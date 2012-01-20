$(function() {
    $( "#res_date" ).datepicker({ dateFormat: 'yy-mm-dd',
                                   changeMonth: true,
                                   changeYear: true});
});

$(function() {
    $( "#res_date_equals" ).datepicker({ dateFormat: 'yy-mm-dd',
                                   changeMonth: true,
                                   changeYear: true});
});

$(function() {
		$( "#draggable_interval" ).draggable();
	});
	
$(function() {
		$( "#draggable_reservation" ).draggable();
	});