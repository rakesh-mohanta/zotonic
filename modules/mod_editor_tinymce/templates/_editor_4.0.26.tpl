{% lib 
    "js/4.0.26/tiny-init.js"
    "js/4.0.26/z_editor.js"
%}
<script type="text/javascript" src="/lib/js/4.0.26/tinymce/tinymce.min.js"></script>
<script type="text/javascript" src="/lib/js/4.0.26/tinymce/jquery.tinymce.min.js"></script>
{% if not is_tinymce_include %}
<script type="text/javascript">
$(document).ready(function(){
	{% all catinclude "_admin_tinymce_overrides_js.tpl" id %}
    z_tinymce_init();
});
</script>
{% endif %}
