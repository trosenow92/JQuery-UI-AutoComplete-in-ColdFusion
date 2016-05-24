<link rel="stylesheet" type="text/css" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1/themes/redmond/jquery-ui.css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1/jquery-ui.min.js"></script>

<script type="text/javascript">
$(function() {
             
            $(".searchField").autocomplete({
                source: "autocomplete.cfm",
                minLength: 3
            });
        });

$(function() {
    $(".searchField").autocomplete({
        source: "AutoComplete2.cfm",
        minLength: 3, // Function doesn't fire until 3 characters have been typed
        select: function(event, ui) { 
         $(".searchField").val(ui.item.label);
        $("#searchForm").submit(); }
    });
});
</script>



<form action="/search-result" method="post" id="searchForm">
<input type="text" name="searchField" id="iconified" class="searchField form-control empty"/>
</form>