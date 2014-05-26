$('document').ready(function () {
  $('#order_request_phone_number').mask('+7 (999) 999 99 99');

  $('#order_request_flat_number').keydown(function (e) {
    if ($.inArray(e.keyCode, [46, 8, 9, 27, 13, 110, 190]) !== -1 ||
      (e.keyCode == 65 && e.ctrlKey === true) || 
      (e.keyCode >= 35 && e.keyCode <= 39)) {
        return;
    }
    if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {
      e.preventDefault();
    }
  });
});
