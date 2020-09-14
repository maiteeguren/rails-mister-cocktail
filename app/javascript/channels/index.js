// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.

const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)


window.onscroll = function() {scrollFunction()};

function scrollFunction() {
    const banner = document.querySelector(".banner");
    const logo = document.querySelector(".logo");

     if (document.body.scrollTop > 100 || document.documentElement.scrollTop > 100) {
         logo.classList.remove("small");
    //     banner.classList.remove("fixed");
     } else {
         logo.classList.add("small");
    //     banner.classList.add("fixed");
     }
}

// setInterval(function() {
//     const logo = document.querySelector(".logo");
//     logo.classList.toggle('off');
//     //logo.classList.remove('off');
// }, 2000);
