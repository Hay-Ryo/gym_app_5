// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
Rails.start()
Turbolinks.start()
ActiveStorage.start()

require( "bootstrap/dist/js/bootstrap")
window.$ = jQuery;

$(function(){
  setTimeout("$('.flash').fadeOut('slow')", 2000);
});


// 営業時間外は出席ボタンを押せないようにする
    var currentTime = new Date().getHours();
    var closeTime = document.getElementsByClassName('close-time');
    var attendBtn = document.getElementsByClassName('attend_btn')

    window.addEventListener('load',()=>{
    if (0 <= currentTime && currentTime <= 23){
      closeTime[0].classList.add('closed-hours');
      attendBtn[0].disabled = true;
    }
});

