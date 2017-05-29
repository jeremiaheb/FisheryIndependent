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
//= require_tree .
//


$( document ).ready(function() {

  $("#tripsTable").DataTable({
  
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

  $(".gridNumber").each(function(){
      var $gnum = $(this).val();
      var $sbutton = $('<input/>').attr({type: "button", class: "btn btn-info", value: $gnum, 'data-toggle': "collapse", 'data-target': "#" + $gnum, 'data-parent': ".mySamples"});
        $(this).closest(".sampleContainer").attr("id", $gnum);
        $sbutton.appendTo(".formSidebar");
  });
  
  $('input[type="button"]').each(function(){ $(this).click(); });

});
