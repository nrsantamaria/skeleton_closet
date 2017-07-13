$(function() {
  $('.edit_skeleton input[type=submit]').remove();
  $('.edit_skeleton input[type=checkbox]').click(function() {
    $(this).parent('form').submit()
  });
});
