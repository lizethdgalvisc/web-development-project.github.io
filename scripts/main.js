const $btnSignIn= document.querySelector('.sign-in-btn'),
      $btnSignUp = document.querySelector('.sign-up-btn'),  
      $signUp = document.querySelector('.sign-up'),
      $signIn  = document.querySelector('.sign-in');

document.addEventListener('click', e => {
    if (e.target === $btnSignIn || e.target === $btnSignUp) {
        $signIn.classList.toggle('active');
        $signUp.classList.toggle('active')
    }
});

function validate(){
var email=document.getElementById(email).Value
var password=document.getElementById(password).value;
if(email=="correo@ejemplo.com" && password=="1234"){
    alert("Login exitoso");
}
else{
    alert("Login falló");
}
}