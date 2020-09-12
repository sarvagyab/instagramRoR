# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/



$ ->
    console.log(('.pagination').length)
    console.log(('#posts').length)
    if $('.pagination').length
        console.log("here we")
        $(window).scroll ->
            url = $('.pagination .next_page').attr('href');
            console.log("url = ",url);
            console.log($(window).scrollTop());
            console.log($(document).height() - $(window).height() - 50)
            if (url && $(window).scrollTop() > $(document).height() - $(window).height() - 50)
                console.log("hell yeah")
                $('.pagination').text("Please Wait...");
                return $.getScript(url);
        $(window).scroll();