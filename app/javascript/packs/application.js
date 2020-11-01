// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

import 'bootstrap';
// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
import { initUpdateNavbarOnScroll } from '../components/navbar';
import { showForm } from '../components/new-dose-form';
import { modalToggle } from '../components/modals';


document.addEventListener('turbolinks:load', () => {
  // Call your JS functions here
  initUpdateNavbarOnScroll();
  showForm();
  modalToggle();
});

// const icon = document.querySelector('.mobile-menu');
// const menu = document.querySelector('.menu');
// const menuIcon = document.getElementById('menu-icon');
// const exitIcon = document.getElementById('exit-icon');

// icon.addEventListener('click', () => {
//   menu.classList.toggle('hide-menu');
//   menuIcon.classList.toggle('hidden');
//   exitIcon.classList.toggle('hidden');
// })

// menu.addEventListener('click', () => {
//   menu.classList.toggle('hide-menu');
//   menuIcon.classList.toggle('hidden');
//   exitIcon.classList.toggle('hidden');
// })