import $ from "jquery"

const initSlider = () => {
  $( document ).on('turbolinks:load', function(){
    if($('#panel').length) {
      console.log('swipe run?');
      $("#flip").click(function(){
        $("#panel").slideToggle("slow");
      });
    }
  });
}

export { initSlider };
