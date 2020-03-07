const signUp = document.querySelector('#sign-up')
const signIn = document.querySelector('#sign-in')
 
eventListeners()
function eventListeners() {
  if (signUp) {
    signUp.addEventListener('click', addActiveClass)
  }

  if (signIn) {
    signIn.addEventListener('click', addActiveClassSignIn)
  }
}

// function addActiveClass() {
//   signUp.classList.add("active")
//   // signIn.classList.remove("active")
// }

// function addActiveClassSignIn() {
//   signIn.classList.add("active")
//   signUp.classList.remove("active")
// }