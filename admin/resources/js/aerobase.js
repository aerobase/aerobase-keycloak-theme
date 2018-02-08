'use strict';

// When running in portal mode (iframe) remove top navigation bar
$( document ).ready(function() {
  if ( self !== top ) {
    $(".navbar").remove();
  }
})
