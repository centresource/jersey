(function($){
  $(document).ready(function(){

    // Toggle sidebar navigation items
    $('#nav-primary').on('click', '.nav-action > a', function(e) {
      e.preventDefault();
      var $item    = $(e.target).parent('li');
      var isActive = $item.hasClass('active') || $item.hasClass('child-active');

      if (isActive) {
        $item.removeClass('active child-active');
      } else {
        $item.addClass('active');
      }
    });

  });
})(jQuery);
