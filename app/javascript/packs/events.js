import $ from "jquery";
import animateScrollTo from "animated-scroll-to";

setTimeout(() => {
  const carousel = document.querySelector('.carousel-inner');
  carousel.firstElementChild.className = 'carousel-item active'
}, 200)


function upcoming() {
  let upcoming = document.getElementById("upcomingEvents");
  animateScrollTo(upcoming,{maxDuration: 4000});
}

function passed() {
  let passed = document.getElementById("passedEvents");
  animateScrollTo(passed, {maxDuration: 4000})
}
$(() => $("#up_coming").on("click", () => upcoming()));
$(() => $("#passed").on("click", () => passed()));
