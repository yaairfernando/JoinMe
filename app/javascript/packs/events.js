import $ from "jquery";
import animateScrollTo from "animated-scroll-to";

setTimeout(() => {
  const carousel = document.querySelector('.carousel-inner');
  if (carousel.firstElementChild) {
    carousel.firstElementChild.className = 'carousel-item active'
  }
}, 200)


function upcoming() {
  let upcoming = document.getElementById("upcoming-events");
  animateScrollTo(upcoming,{minDuration: 3000});
}

function passed() {
  let passed = document.getElementById("passed-events");
  animateScrollTo(passed, {minDuration: 3000})
}
$(() => $("#up_coming").on("mouseover", () => upcoming()));
$(() => $("#passed").on("mouseover", () => passed()));
