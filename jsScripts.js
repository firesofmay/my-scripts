# Is there a way to get a <button> element to link to a location without wrapping it in an <a href … tag?
# http: //stackoverflow.com/questions/5025941/is-there-a-way-to-get-a-button-element-to-link-to-a-location-without-wrapping

----------------------------------------------------------------

# Inline Javascript:
<button onclick="window.location='http://www.example.com';">Visit Page Now</button>

# Defining a function in Javascript:
<script>
    function visitPage(){
        window.location='http://www.example.com';
    }
</script>
<button onclick="visitPage();">Visit Page Now</button>

# or in Jquery
<button id="some_id">Visit Page Now</button>

$('#some_id').click(function() {
  window.location='http://www.example.com';
});



----------------------------------------------------------------

# How to retrieve GET parameters from javascript?
# window.location.search will return everything from the ? on. This will remove the ?, use split to separate into key/value arrays, then assign named properties to the params object:
# You can then get the test parameter from http://myurl.com/?test=1 by calling params.test.
# http://stackoverflow.com/questions/5448545/how-to-retrieve-get-parameters-from-javascript
var prmstr = window.location.search.substr(1);
var prmarr = prmstr.split ("&");
var params = {};

for ( var i = 0; i < prmarr.length; i++) {
    var tmparr = prmarr[i].split("=");
    params[tmparr[0]] = tmparr[1];
}


# Possible Other SOlution
# http://stackoverflow.com/questions/901115/how-can-i-get-query-string-values
function getParameterByName(name)
{
  name = name.replace(/[\[]/, "\\\[").replace(/[\]]/, "\\\]");
  var regexS = "[\\?&]" + name + "=([^&#]*)";
  var regex = new RegExp(regexS);
  var results = regex.exec(window.location.search);
  if(results == null)
    return "";
  else
    return decodeURIComponent(results[1].replace(/\+/g, " "));
}


----------------------------------------------------------------


# how to get selected text in js
# http://www.codetoad.com/javascript_get_selected_text.asp
# http://rangyinputs.googlecode.com/svn/trunk/demos/textinputs_jquery.html

----------------------------------------------------------------

# Markdown links
http://strapdownjs.com/
http://mathiasbynens.be/notes/showdown-javascript-jquery
http://mathiasbynens.be/demo/showdown-javascript-jquery
