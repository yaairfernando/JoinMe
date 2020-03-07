import $ from "jquery";

const signUp = document.querySelector('#sign-up')
const signIn = document.querySelector('#sign-in')
 
// eventListeners()
// function eventListeners() {
//   if (signUp) {
//     signUp.addEventListener('click', addActiveClass)
//   }

//   if (signIn) {
//     signIn.addEventListener('click', addActiveClassSignIn)
//   }
// }


// $(() => $('#sign-in').bind("ajax:beforeSend", function(){
// }).bind("ajax:success", function(event){
//     const signIn = document.querySelector('#sign-in')
//     console.log(signIn.parentNode.nextElementSibling)
//     console.log(event)
//     $('.form__container').html(`<%= j render :partial => 'sessions/new' %>`)

//     // if(event.originalEvent.detail[0].data.length === 0) {
//     //   console.log("jfjfj")
//     // }
//     // $('.content_custom_event').html(event.originalEvent.detail[0].html) 
//   }).bind('ajax:complete', function(event){
//     console.log(event)
//   }).bind("ajax:error", function(event){
//     console.log(event)
//   })
// )

// function addActiveClass() {
//   signUp.classList.add("active")
//   // signIn.classList.remove("active")
// }

// function addActiveClassSignIn() {
//   signIn.classList.add("active")
//   signUp.classList.remove("active")
// }