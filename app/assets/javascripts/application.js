// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require activestorage
//= require rails-ujs
//= require turbolinks
//= require jquery
//= require moment
//= require bootstrap-datetimepicker
//= require bootstrap-sprockets
//= require_tree .





//customer_top
$(function() {
    $('.top_image').slick({
        dots: true,
        autoplay: true,
        slidesToShow: 2,
        centerMode: true,
        arrows: false,
        autoplaySpeed: 0, //待ち時間を０に
        speed: 12000, // スピードをゆっくりに
        swipe: false,
        cssEase: 'linear',
        // 以下、操作後に止まってしまう仕様の対策
        pauseOnFocus: false,
        pauseOnHover: false,
        pauseOnDotsHover: false,
        responsive: true,
    });
});





//customer_reservation
$(function () {
        $('#datetimepicker6').datetimepicker();
 });












