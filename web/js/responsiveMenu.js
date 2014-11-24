/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



/***************************************************
responsive menu
***************************************************/

jQuery(function (jQuery) {
    jQuery("#cat-navi").append("<select/>");
	jQuery("#cat-navi select").addClass("form-control");
    jQuery("<option />", {
        "selected": "selected",
        "value": "",
        "text": "Choose category"
    }).appendTo("#cat-navi select");
    //new dropdown menu
    jQuery("#cat-navi a").each(function () {
        var el = jQuery(this);
        var perfix = '';
        switch (el.parents().length) {
            case (11):
                perfix = '-';
                break;
            case (13):
                perfix = '--';
                break;
            default:
                perfix = '';
                break;

        }
        jQuery("<option />", {
            "value": el.attr("href"),
            "text": perfix + el.text()
        }).appendTo("#cat-navi select");
    });

    jQuery('#cat-navi select').change(function () {

        window.location.href = this.value;

    });
});
