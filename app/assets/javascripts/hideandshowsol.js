$(document).ready(function()
{
  $(".solution").hide();
$(".hidesol").children('button').click(function()
{
 if($(this).text().trim() == "Hide Solution")
{
 $(this).html("Show Solution");
$(this).siblings(".solution").slideUp();
}

else if($(this).text().trim() == "Show Solution")
{
 $(this).html("Hide Solution");
$(this).siblings(".solution").slideDown();
}
 /* var r = $(this).text();
  alert($(this).text()) */
  
   
});

});

