// Remove stylesheet for DNN Admin Interface when logged out.
if (!$("body").hasClass("dnnEditState")) {
  $('[href*="default.css"]').remove();
}

// Reset Quote Form
$(function() {
  $(":input",".addressAdv").attr("placeholder", "Apt.");
  // convert quote form labels to placeholders
  $(":input",".field").each(function(index, elem) {
    var eId = $(elem).attr("id");
    var label = null;
    if (eId && (label = $(elem).parents("form").find("label[for="+eId+"]")).length == 1) {
        $(elem).attr("placeholder", $(label).html());
        $(label).remove();
    }
  });
  // remove inline styles from state select
  $('select', '.state').removeAttr( 'style' );
});
