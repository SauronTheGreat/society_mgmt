/**
 * Created by JetBrains RubyMine.
 * User: rushabhhathi
 * Date: 9/10/11
 * Time: 11:58 AM
 * To change this template use File | Settings | File Templates.
 */

function setandget(t, s) {
    var parent = t.parent();
    var target = parent.next();
    target.text(s);
    //target.text("Enter your " + $(this).attr("id"))
}

function gettargetstring(t) {
    var s =t.attr("id");
    var s1 = s.split("_");
    var target_string = "";
    for (i = 1; i < s1.length; i++) {
        target_string = target_string + s1[i] + " ";
    }

    return target_string;
}


$(document).ready(function() {


    $("#user_new input").focusin(function(event) {

        $(this).attr("value", "");
//        var parent = $(this).parent();
//        var target = parent.next();
//        target.text("Enter your " + $(this).attr("id"))


        setandget($(this), "Enter your " +gettargetstring($(this)));


    });

    $("#user_new input").focusout(function(event) {
        if($(this).attr("value")=="")
        {
        $(this).attr("value", gettargetstring($(this)));
        setandget($(this),"Enter your" +gettargetstring($(this)));
        }

    });
});