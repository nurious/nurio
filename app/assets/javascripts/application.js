// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootsy
//= require turbolinks
//= require_tree .

$(document).ready(function() {
    $(".animsition").animsition({
    
      inClass               :   'fade-in-up',
      outClass              :   'fade-out-up',
      inDuration            :    1500,
      outDuration           :    800,
      linkElement           :   '.animsition-link', 
      // e.g. linkElement   :   'a:not([target="_blank"]):not([href^=#])'
      loading               :    true,
      loadingParentElement  :   'body', //animsition wrapper element
      loadingClass          :   'animsition-loading',
      unSupportCss          : [ 'animation-duration',
                                '-webkit-animation-duration',
                                '-o-animation-duration'
                              ],
      //"unSupportCss" option allows you to disable the "animsition" in case the css property in the array is not supported by your browser. 
      //The default setting is to disable the "animsition" in a browser that does not support "animation-duration".
      
      overlay               :   false,
      
      overlayClass          :   'animsition-overlay-slide',
      overlayParentElement  :   'body'
    }); 
});





