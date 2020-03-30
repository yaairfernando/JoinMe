import $ from "jquery";

$(() => $('.form__body').bind("ajax:beforeSend", function(){
}).bind("ajax:success", function(event){
  if (event.originalEvent.detail[0].errors) {
    let div = document.createElement('div');
    let span = document.createElement('span');
    span.innerText = event.originalEvent.detail[0].errors[0][1]
    div.classList.add('message')
    div.classList.add(event.originalEvent.detail[0].errors[0][0])
    div.appendChild(span);
    let form = document.querySelector('.form__container');
    form.insertBefore(div,document.querySelector('.form__body'))
  
    setTimeout(() => {
      document.querySelector('.message').style.display = 'none'
    }, 6000)
  }
}).bind('ajax:complete', function(){
}).bind("ajax:error", function(){
})
)