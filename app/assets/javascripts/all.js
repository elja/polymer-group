/*   
 * Template Name: Unify - Responsive Bootstrap Template
 * Description: Business, Corporate, Portfolio and Blog Theme.
 * Version: 1.3
 * Author: Html Stream
 * Website: http://htmlstream.com/preview/unify
 */

var App = function () {

    function handleIEFixes() {
        //fix html5 placeholder attribute for ie7 & ie8
        if (jQuery.browser.msie && jQuery.browser.version.substr(0, 1) < 9) { // ie7&ie8
            jQuery('input[placeholder], textarea[placeholder]').each(function () {
                var input = jQuery(this);

                jQuery(input).val(input.attr('placeholder'));

                jQuery(input).focus(function () {
                    if (input.val() == input.attr('placeholder')) {
                        input.val('');
                    }
                });

                jQuery(input).blur(function () {
                    if (input.val() == '' || input.val() == input.attr('placeholder')) {
                        input.val(input.attr('placeholder'));
                    }
                });
            });
        }
    }

    function handleBootstrap() {
        jQuery('.carousel').carousel({
            interval: 5000,
            pause: 'hover'
        });
        jQuery('.tooltips').tooltip();
        jQuery('.popovers').popover();
    }

    function handleBoxed() {
        jQuery('.boxed-layout-btn').click(function(){
            jQuery(this).addClass("active-switcher-btn");
            jQuery(".wide-layout-btn").removeClass("active-switcher-btn");
            jQuery("body").addClass("boxed-layout container");
        });
        jQuery('.wide-layout-btn').click(function(){
            jQuery(this).addClass("active-switcher-btn");
            jQuery(".boxed-layout-btn").removeClass("active-switcher-btn");
            jQuery("body").removeClass("boxed-layout container");
        });
    }

    return {
        init: function () {
            handleBootstrap();
            handleIEFixes();
            handleBoxed();
        },

        initSliders: function () {
            $('#clients-flexslider').flexslider({
                animation: "slide",
                easing: "swing",
                animationLoop: true,
                itemWidth: 1,
                itemMargin: 1,
                minItems: 2,
                maxItems: 9,
                controlNav: false,
                directionNav: false,
                move: 2
            });

            $('#layerslider').layerSlider({
                skinsPath : 'assets/plugins/layer_slider/skins/',
                skin : 'fullwidth',
                thumbnailNavigation : 'hover',
                hoverPrevNext : true,
                responsive : true,
                responsiveUnder : 960,
                sublayerContainer : 960
            });
        },

        initFancybox: function () {
            jQuery(".fancybox-button").fancybox({
                groupAttr: 'data-rel',
                prevEffect: 'none',
                nextEffect: 'none',
                closeBtn: true,
                helpers: {
                    title: {
                        type: 'inside'
                    }
                }
            });
        }
    };
}();