$('document').ready(function () {
  $('#house_link').addClass('disabled');

  var streets = new Bloodhound({
    datumTokenizer: Bloodhound.tokenizers.obj.whitespace('name'),
    queryTokenizer: Bloodhound.tokenizers.whitespace,
    limit: 10,
    remote: {
      url: '/streets/autocomplete?query=%QUERY',
      filter: function(list) {
        return $.map(list, function(street) { return { name: street.name, id: street.id }; });
      }
    }
  });
 
  streets.initialize();

  $('#street_search .typeahead').typeahead(null, {
    name: 'streets',
    displayKey: 'name',
    source: streets.ttAdapter()
  }).on('typeahead:selected', function (obj, street) {
    $.ajax({
      url: '/houses?street_id=' + street.id,
      type: 'GET',
      success: function(response) {
        var html = '<option value="0">Номер дома</option>';
        $.map(response, function(house) {
          html += '<option value="' + house.id.toString() + '">' + house.number.toString() + '</option>';
        });
        $('#houses').html(html);
      }
    })
  });

  $('#houses').on('change', function () {
    $('#house_link').prop('href', '/houses/' + $(this).val());
    $('#house_link').removeClass('disabled', false);
  });
});
