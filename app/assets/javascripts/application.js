// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require rails-ujs
//= require bootstrap-sprockets
//= require cocoon
//= require dataTables/jquery.dataTables
//= require dataTables/bootstrap/3/jquery.dataTables.bootstrap
//= require bootstrap-datepicker
//= require select2
//= require jquery.validate
//= require_tree .
//


$( document ).ready(function() {

  $(".table").DataTable({
  
  });

  $('.dateField').datepicker({
    format: "yyyy/mm/dd"
  });

  $(".speciesField").select2({
    theme: "bootstrap"
  });



  function addsCollapseButtonToTripSidebar() {
    $(".gridNumber").focusout(function(){
      var $gnum = $(this).val();
      var $sbutton = $('<input/>').attr({type: "button", class: "btn btn-info", value: $gnum, 'data-toggle': "collapse", 'data-target': "#" + $gnum, 'data-parent': ".mySamples"});
      if (!$(".sampleContainer").is("#" + $gnum)) {
        $(this).closest(".sampleContainer").attr("id", $gnum);
        $sbutton.appendTo(".formSidebar");
        $('input[type="button"][value="#" + $gnum]').click();
        
      }
    });
  };

  var $mySamples = $(".mySamples");
  $mySamples.on('show.bs.collapse', '.sampleContainer', function(){ $mySamples.find('.sampleContainer.in').collapse('hide'); });

  addsCollapseButtonToTripSidebar();

  
  $(document).delegate(".addSamplesLink", "click", function(){ 
    addsCollapseButtonToTripSidebar();
  });

  $(document).delegate(".addDropLink", "click", function(){ 
    validate_fields();
  }); 
  
  $(document).delegate(".addCatchLink", "click", function(){ 
    $(".speciesField").select2({ theme: "bootstrap" });
  });



  $(".gridNumber").each(function(){
      var $gnum = $(this).val();
      var $sbutton = $('<input/>').attr({type: "button", class: "btn btn-info", value: $gnum, 'data-toggle': "collapse", 'data-target': "#" + $gnum, 'data-parent': ".mySamples"});
        $(this).closest(".sampleContainer").attr("id", $gnum);
        $sbutton.appendTo(".formSidebar");
  });
  
  $('input[type="button"]').each(function(){ $(this).click(); });



  jQuery.validator.addMethod("lat_check", function(value, element) {
    // allow any non-whitespace characters as the host part
    return this.optional( element ) || /^-?(([1-8]?\d))(\/|\:|\ )[1-5]?\d(\.\d{4})?$/m.test( value );
    },
  );
  
  jQuery.validator.addMethod("lon_check", function(value, element) {
    // allow any non-whitespace characters as the host part
    return this.optional( element ) || /^-?([1-9]|[1-9][0-9]|[1][0-7][0-9])(\/|\:|\ )[1-5]?\d(\.\d{4})?$/m.test( value );
    },
  );
  
    $(".new_trip, .edit_trip").validate({

      errorElement: "span",


      onfocusout: function(element) {
        this.element(element);
      },


    });

  function validate_fields() {

    $(".latitude").each(function() {
      $(this).rules("add", {
        required: true,
        lat_check: true,
        messages: {
          required: "Required Input",
          lat_check: "Must be in the format of"
        }
      });
    });

    $(".longitude").each(function() {
      $(this).rules("add", {
        required: true,
        lon_check: true,
        messages: {
          required: "Required Input",
          lon_check: "Must be in the format of"
        }
      });
    });

  };

  validate_fields();
  


});
