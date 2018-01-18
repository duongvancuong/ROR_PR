$(document).ready(function() {
  function getParamsURL() {
    var queryString = decodeURIComponent(window.location.search.substring(1));
    var obj = {};

    if (queryString) {
      queryString = queryString.split('#')[0];

      var arr = queryString.split('&');
      for (var i=0; i<arr.length; i++) {
        var a = arr[i].split('=');

        var paramName = a[0].replace(/[^\w\s]/gi, '');
        var paramValue = typeof(a[1]) === 'undefined' ? true : a[1];
        paramName = paramName.toLowerCase();
        paramValue = paramValue.toLowerCase();

        if (obj[paramName]) {
          if (typeof obj[paramName] === 'string') {
            obj[paramName] = [obj[paramName]];
          }
          obj[paramName].push(paramValue);
        } else {
          obj[paramName] = paramValue;
        }
      }
    }
    return obj;
  };

  function getCheckboxSearching() {
    var paramsCheckbox = getParamsURL().qcategories_id_eq_any;
    if (paramsCheckbox) {
      if (typeof paramsCheckbox === 'string') {
        $(`#category_${paramsCheckbox}`).attr('checked', 'checked');
      } else {
        for(var i=0; i < paramsCheckbox.length; i++) {
          $(`#category_${paramsCheckbox[i]}`).attr('checked', 'checked');
        }
      }
    }
  };

  getCheckboxSearching();
});
