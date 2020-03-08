import $ from "jquery";

const signUp = document.querySelector('#sign-up')
const signIn = document.querySelector('#sign-in')

$(() => {
  if ($('.message').length) {
    setInterval(() => {
      $('.message').attr('style', 'display: none');
    }, 4000)
  }
})

$(() => $('.form__header--signup').click(() => toggleClassSignUp()))
$(() => $('.form__header--signin').click(() => toggleClassSignIn()))


function toggleClassSignUp() {
  $('.form__header--signup').addClass('active active--sign-up')
  $('.form__header--signin').removeClass('active active--sign-in')
}

function toggleClassSignIn() {
  $('.form__header--signup').removeClass('active active--sign-up')
  $('.form__header--signin').addClass('active active--sign-in')
}
  