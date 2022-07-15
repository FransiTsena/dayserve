var button = document.getElementById('btn');
var email = document.getElementById('email').value;
var password = document.getElementById('password').value;

// element.attachEvent('onclick', function() {
//     console.log("hello");

// });
// element.onclick = function() {
//     alert('did stuff #1');
// };
// function login() {
//     console.log("hello");
// }
button.addEventListener('click', function handleClick(event) {
    console.log("hello");
    console.log(email);
    console.log(password);


});