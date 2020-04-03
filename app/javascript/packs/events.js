import $ from "jquery";
import animateScrollTo from "animated-scroll-to";
setTimeout(() => {
  const carousel = document.querySelector('.carousel-inner');
  if (carousel && carousel.firstElementChild) {
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
var scrolled=0;

$(() => $("#up_coming").on("mouseover", () => upcoming()));
$(() => $("#passed").on("mouseover", () => passed()));
$(() => $(".popup__close").on('click', () => fadeOut()))
$(() => $(".arrow").on("click" ,function(){
  $('html, body').animate({scrollTop: 950}, 600);
}));

function fadeOut() {
  $("#popup").addClass("popup-hide");
}

if ($('.invite-people-item').length) {
  console.log("yess")
  $(() => $('.invite-people-item').bind("ajax:beforeSend", function(){
  }).bind("ajax:success", function(event){
    if (event.originalEvent.detail[0].data) {
      let div = document.createElement('div');
      let span = document.createElement('span');
      span.classList.add('invite');
      span.innerText = event.originalEvent.detail[0].data[0][1]
      div.classList.add('message')
      div.classList.add(event.originalEvent.detail[0].data[0][0])
      div.appendChild(span);
      let form = document.querySelector('.popup__right');
      form.insertBefore(div,document.querySelector('.show_event'))
    
      setTimeout(() => {
        document.querySelector('.message').style.display = 'none'
      }, 6000)
    }
  }).bind('ajax:complete', function(){
  }).bind("ajax:error", function(){
  })
  )
}

$(() => $('.comming_request').bind("ajax:beforeSend", function(){
}).bind("ajax:success", function(event){
  console.log(event.originalEvent.detail)
  if(event.originalEvent.detail[0].data.length === 0) {
    console.log("jfjfj")
  }
  $('.content_custom_event').html(event.originalEvent.detail[0].html) 
}).bind('ajax:complete', function(){
}).bind("ajax:error", function(){
})
)

$(() => $('.passed_request').bind("ajax:beforeSend", function(){
}).bind("ajax:success", function(event){
  console.log(event.originalEvent.detail)
  if(event.originalEvent.detail[0].data.length === 0) {
    console.log("jfjfj")
  }
  $('.content_custom_event').html(event.originalEvent.detail[0].html) 
}).bind('ajax:complete', function(){
}).bind("ajax:error", function(){
})
)
