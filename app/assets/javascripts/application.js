// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require pickadate/translations/bg_BG
//= require bootstrap-datepicker

function cloneDropdown(callerNode) {
    var div = callerNode.parentNode;
    var container = div.parentNode;

    if (div.classList.contains("cloneable-selected")) {
        return;
    }

    // dirty hack, look away
    var fieldName = callerNode.getAttribute("name");
    if (fieldName.indexOf("[]", fieldName.length - 2) === -1) {
        callerNode.setAttribute("name", fieldName + "[]");
    }

    // clone dropdown div
    var newDiv = div.cloneNode(true);
    container.appendChild(newDiv);

    // mark dropdown div as selected
    div.classList.remove("cloneable-unselected");
    div.classList.add("cloneable-selected");
}

function removeElement(node) {
    node.parentNode.removeChild(node);
}

/*function add_fields(link, association, content) {
    var new_id = new Date().getTime();
    var regexp = new RegExp("new_" + association, "g");
    $(link).parent().before(content.replace(regexp, new_id));
}
*/


//nedel ami filter
/*

function onChangeN(node) {
    //var e = document.getElementById('check_up_illness_ids');
    var e =node;
    var illness=e.options[e.selectedIndex].text;
    console.log(illness);
    var options=Array.prototype.filter.call(document.querySelectorAll("optgroup[label]"),optgroup[label='illness']).innerHTML;
    console.log(options);
    if (options) {
        document.getElementById('check_up_medicine_ids').innerHTML = options;
    }
    else {
        document.getElementById('check_up_medicine_ids').innerHTML = '';
    }
}

*/

function cloneDiv(node){
    var div=node.childNodes[1];
    console.log(div);
    var dupDiv=div.cloneNode(true);
    dupDiv.hidden=false;
    console.log(node.lastElementChild);
    node.insertBefore(dupDiv, node.lastElementChild);
    //node.appendChild(dupDiv);

}

function dirtyHack(callerNode) {
    // dirty hack, look away
    console.log(callerNode);

    var div = callerNode.parentNode;
    if (div.classList.contains("cloneable-selected")) {
        return;
    }

    var fieldName = callerNode.getAttribute("name");
    console.log(fieldName);
    if (fieldName.indexOf("[]", fieldName.length - 2) === -1) {
        callerNode.setAttribute("name", fieldName + "[]");
    }

    // mark dropdown div as selected
    div.classList.remove("cloneable-unselected");
    div.classList.add("cloneable-selected");
}

//var medicines_html;
//window.addEventListener('load',loading, false);
//function loading() {
//    var medicines_id = document.getElementById('check_up_medicine_ids');
//    medicines_html = medicines_id.innerHTML;
//    //console.log(medicines_id);
//    //console.log(medicines_html);
//    var tr=document.getElementById('check_up_illness_ids').innerHTML;
//    //console.log(tr);
//
//}
//function moja_funkcija($this) {
//    console.log($this);
//    var $parentdiv = $this.closest('.cloneable');
//    console.log($parentdiv);
//    illness = $this.find(':selected').text();
//    console.log(illness);
//    options = $(medicines_html).filter("optgroup[label='#{illness}']").html();
//    //console.log(options)
//    if (options.length) {
//        //#$('#check_up_medicine_ids').html(options)
//        bolezni = $parentdiv.find('.bolezni > select').html(options);
//        $parentdiv.find('.bolezni > select').prepend('<option value=""></option>');
//        //#console.log("bolezni")
//        //#console.log(bolezni.html())
//    }
//    else {
//        //#$('#check_up_medicine_ids').empty()
//        $parentdiv.find('.bolezni > select').empty();
//    }
//}
//
//$('#kloni').on("change", '.check_up_illness_ids', function() {
    //dirtyHack(this) });



//adding an empty array to the name atribute of select
function dirtyHackLoad(a) {
    //console.log(a.outerHTML);
    x = $(a).attr("name");
    $(a).attr("name",x+"[]");
    //console.log($(a).attr("name"));//


    //b=$(a).parent();
    //c=$(b).find('select');
    //c=$(b).html();
    //d=$(c).attr('name');
    //console.log($(b).html());
    //console.log($(d).text());
}


//onload
$(document).ready(function() {//
    $.each($('.check_up_illness_ids'), function( index, value ){
        //alert( index + ": " + value );
        dirtyHackLoad(value)
    });
    $.each($('.check_up_medicine_ids'), function( index, value ){

        //alert( index + ": " + value );

        dirtyHackLoad(value)

    });
    $.each($('.check_up_diet_ids'), function( index, value ){
        //alert( index + ": " + value );
        dirtyHackLoad(value)
    });
});