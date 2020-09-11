// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.

const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)


window.onscroll = function() {scrollFunction()};

function scrollFunction() {
    const banner = document.querySelector(".banner");
    const logo = document.querySelector("#logo");

    if (document.body.scrollTop > 100 || document.documentElement.scrollTop > 100) {
        //banner.style.height = "50vh";
        logo.style.height = "120px";
        banner.style.position("sticky");
    } else {
        banner.style.height = "100vh";
        logo.style.height = "248px"; 
        banner.classList.remove("fixed");
    }
}

