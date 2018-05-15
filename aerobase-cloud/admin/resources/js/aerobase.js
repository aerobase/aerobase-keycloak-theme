'use strict';

// When running in portal mode (iframe) remove top navigation bar
$( document ).ready(function() {
  if ( self !== top ) {
    $(".navbar").remove();
  } else {
    // If we are not in iframe context redirect to default portal
    document.location.href = document.location.protocol + "//" + document.location.hostname + "/portal";
  } 
})
