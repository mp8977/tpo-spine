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
    div.className = "cloneable-selected";
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



