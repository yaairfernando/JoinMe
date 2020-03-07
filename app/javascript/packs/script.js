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


// $(() => $('#sign-up').bind("ajax:beforeSend", function(){
// }).bind("ajax:success", function(event){
//     console.log(event.originalEvent.detail)
//     $('.form__container').html(event.originalEvent.detail[0].html) 
//     const signIn = document.querySelector('#sign-up')
//     console.log(signIn)
//     console.log(event)
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