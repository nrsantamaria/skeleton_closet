$(function() {
  $('.edit_skeleton input[type=submit]').remove();
  $('.edit_skeleton input[type=checkbox]').click(function() {
    console.log(this);
    $(this).parent('form').submit();
  });
});
