// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
import 'bootstrap';

import { select2 } from '../components/select2';
import { loadDynamicBannerText } from '../components/banner';


// triggers teh event when page loads
document.addEventListener("turbolinks:load", function() {
  select2();
});


document.addEventListener('turbolinks:load', () => {
  // Call your JS functions here
  // [...]
  loadDynamicBannerText();
});

const banner = document.querySelector(".banner")

// banner.addEventListener("mouseenter", (event) => {
//   console.log(banner);
// })

// from here. Below are tests to make elements visible with some JS. Did not work as intended but used a solution in css. See Card.scss
// const ingredientsList = document.querySelectorAll(".index-ingredients");
// const card = document.querySelectorAll(".card-category");


// const showList = (element) => {
//   element.style.visibility = "visible"
// }

// const hideList = (element) => {
//   element.style.visibility = "collapse"
// }

// const hoverToExpand = (element) => {
//   element.addEventListener("mouseover", (event) => {
//   ingredientsList.forEach(showList);
// });
// }

// const reverseHover = (hello) => {
//   hello.addEventListener("mouseout", (event) => {
//   ingredientsList.forEach(hideList)
// });
// }

// card.forEach(hoverToExpand);
// card.forEach(reverseHover);


console.log("hello")
