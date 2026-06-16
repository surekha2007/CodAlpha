<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ShopPro - Professional E-Commerce Store</title>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:'Segoe UI',sans-serif;
}

body{
background:#f4f6f9;
}

header{
background:#111827;
color:white;
padding:15px 5%;
display:flex;
justify-content:space-between;
align-items:center;
position:sticky;
top:0;
z-index:1000;
box-shadow:0 2px 10px rgba(0,0,0,.2);
}

.logo{
font-size:28px;
font-weight:bold;
}

.search-box{
display:flex;
width:45%;
}

.search-box input{
flex:1;
padding:12px;
border:none;
outline:none;
border-radius:30px 0 0 30px;
}

.search-box button{
border:none;
background:#2563eb;
color:white;
padding:12px 20px;
border-radius:0 30px 30px 0;
cursor:pointer;
}

.cart-icon{
background:#2563eb;
padding:10px 18px;
border-radius:30px;
cursor:pointer;
font-weight:bold;
}

nav{
background:white;
padding:15px;
display:flex;
justify-content:center;
gap:30px;
box-shadow:0 2px 10px rgba(0,0,0,.1);
}

nav a{
text-decoration:none;
color:#111827;
font-weight:600;
}

.hero{
height:500px;
background:linear-gradient(135deg,#2563eb,#7c3aed);
display:flex;
justify-content:center;
align-items:center;
text-align:center;
color:white;
}

.hero h1{
font-size:60px;
margin-bottom:20px;
}

.hero p{
font-size:22px;
margin-bottom:20px;
}

.hero button{
background:white;
color:#2563eb;
padding:15px 30px;
border:none;
border-radius:30px;
cursor:pointer;
font-size:18px;
font-weight:bold;
}

.categories{
padding:50px 5%;
}

.categories h2{
text-align:center;
margin-bottom:30px;
}

.category-grid{
display:grid;
grid-template-columns:repeat(auto-fit,minmax(180px,1fr));
gap:20px;
}

.category{
background:white;
padding:30px;
text-align:center;
border-radius:12px;
font-size:20px;
font-weight:bold;
box-shadow:0 2px 10px rgba(0,0,0,.1);
transition:.3s;
}

.category:hover{
transform:translateY(-5px);
}

.products{
padding:50px 5%;
}

.products h2{
text-align:center;
margin-bottom:30px;
}

.product-grid{
display:grid;
grid-template-columns:repeat(auto-fit,minmax(250px,1fr));
gap:25px;
}

.product-card{
background:white;
border-radius:15px;
overflow:hidden;
box-shadow:0 2px 15px rgba(0,0,0,.1);
transition:.3s;
}

.product-card:hover{
transform:translateY(-8px);
}

.product-card img{
width:100%;
height:220px;
object-fit:cover;
}

.product-card h3{
padding:15px;
}

.price{
padding:0 15px;
font-size:22px;
font-weight:bold;
color:green;
}

.product-card button{
margin:15px;
width:calc(100% - 30px);
padding:12px;
background:#2563eb;
border:none;
color:white;
border-radius:8px;
cursor:pointer;
}

.cart-section,
.register-section,
.login-section{
background:white;
margin:30px 5%;
padding:30px;
border-radius:15px;
box-shadow:0 2px 15px rgba(0,0,0,.1);
}

.cart-section h2,
.register-section h2,
.login-section h2{
margin-bottom:20px;
}

#cartItems{
list-style:none;
margin-bottom:20px;
}

#cartItems li{
padding:10px;
background:#f1f5f9;
margin-bottom:10px;
border-radius:8px;
}

input{
width:100%;
padding:12px;
margin-bottom:15px;
border:1px solid #ccc;
border-radius:8px;
}

.register-section button,
.login-section button,
.cart-section button{
padding:12px 20px;
background:#2563eb;
color:white;
border:none;
border-radius:8px;
cursor:pointer;
}

footer{
background:#111827;
color:white;
text-align:center;
padding:30px;
margin-top:40px;
}

@media(max-width:768px){

header{
flex-direction:column;
gap:15px;
}

.search-box{
width:100%;
}

.hero h1{
font-size:40px;
}

.hero p{
font-size:18px;
}

}

</style>

</head>
<body>

<!-- NAVBAR -->

<header>

<div class="logo">
<i class="fa-solid fa-cart-shopping"></i>
ShopPro
</div>

<div class="search-box">
<input type="text" placeholder="Search Products...">
<button>
<i class="fa-solid fa-magnifying-glass"></i>
</button>
</div>

<div class="cart-icon">
<i class="fa-solid fa-cart-shopping"></i>
<span id="cartCount">0</span>
</div>

</header>

<!-- MENU -->

<nav>

<a href="#">Home</a>
<a href="#">Products</a>
<a href="#">Categories</a>
<a href="#">Deals</a>
<a href="#">Contact</a>

</nav>

<!-- HERO SECTION -->

<section class="hero">

<div class="hero-content">

<h1>Big Summer Sale</h1>

<p>
Get up to 50% OFF on Electronics
</p>

<button>
Shop Now
</button>

</div>

</section>

<!-- CATEGORIES -->

<section class="categories">

<h2>Categories</h2>

<div class="category-grid">

<div class="category">
🎧 Headphones
</div>

<div class="category">
⌚ Smart Watches
</div>

<div class="category">
🔊 Speakers
</div>

<div class="category">
💻 Laptops
</div>

<div class="category">
📱 Smartphones
</div>

<div class="category">
⌨ Keyboards
</div>

</div>

</section>

<!-- PRODUCTS -->

<section class="products">

<h2>Featured Products</h2>

<div class="product-grid">

<!-- Product 1 -->

<div class="product-card">

<img src="https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=1000">

<h3>Sony Headphones</h3>

<p class="price">₹2,999</p>

<button onclick="addToCart('Sony Headphones',2999)">
Add To Cart
</button>

</div>

<!-- Product 2 -->

<div class="product-card">

<img src="https://images.unsplash.com/photo-1546868871-7041f2a55e12?w=1000">

<h3>Smart Watch</h3>

<p class="price">₹4,999</p>

<button onclick="addToCart('Smart Watch',4999)">
Add To Cart
</button>

</div>

<!-- Product 3 -->

<div class="product-card">

<img src="https://images.unsplash.com/photo-1589003077984-894e133dabab?w=1000">

<h3>Bluetooth Speaker</h3>

<p class="price">₹1,999</p>

<button onclick="addToCart('Speaker',1999)">
Add To Cart
</button>

</div>

<!-- Product 4 -->

<div class="product-card">

<img src="https://images.unsplash.com/photo-1496181133206-80ce9b88a853?w=1000">

<h3>HP Laptop</h3>

<p class="price">₹59,999</p>

<button onclick="addToCart('HP Laptop',59999)">
Add To Cart
</button>

</div>

<!-- Product 5 -->

<div class="product-card">

<img src="https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?w=1000">

<h3>Samsung Smartphone</h3>

<p class="price">₹24,999</p>

<button onclick="addToCart('Samsung Smartphone',24999)">
Add To Cart
</button>

</div>

<!-- Product 6 -->

<div class="product-card">

<img src="https://images.unsplash.com/photo-1516035069371-29a1b244cc32?w=1000">

<h3>Canon Camera</h3>

<p class="price">₹34,999</p>

<button onclick="addToCart('Canon Camera',34999)">
Add To Cart
</button>

</div>

</div>

</section>

<!-- CART -->

<section class="cart-section">

<h2>Shopping Cart</h2>

<ul id="cartItems"></ul>

<h3>
Total: ₹<span id="totalPrice">0</span>
</h3>

<button onclick="checkout()">
Checkout
</button>

</section>

<!-- USER REGISTRATION -->

<section class="register-section">

<h2>User Registration</h2>

<input type="text" placeholder="Full Name">

<input type="email" placeholder="Email Address">

<input type="tel" placeholder="Phone Number">

<input type="text" placeholder="Address">

<input type="text" placeholder="City">

<input type="text" placeholder="State">

<input type="text" placeholder="Pincode">

<input type="password" placeholder="Password">

<button>
Register
</button>

</section>

<!-- LOGIN -->

<section class="login-section">

<h2>Login</h2>

<input type="email" placeholder="Email">

<input type="password" placeholder="Password">

<button>
Login
</button>

</section>

<footer>

<h3>ShopPro</h3>

<p>
Professional E-Commerce Store
</p>

</footer>

<script>

let cart = [];
let totalPrice = 0;

// Add Product To Cart

function addToCart(product, price){

cart.push({
product,
price
});

totalPrice += price;

updateCart();

alert(product + " added to cart");
}

// Update Cart

function updateCart(){

let cartItems =
document.getElementById("cartItems");

cartItems.innerHTML = "";

cart.forEach((item,index)=>{

let li =
document.createElement("li");

li.innerHTML = `
${item.product}
- ₹${item.price}

<button onclick="removeItem(${index})"
style="
float:right;
background:red;
color:white;
border:none;
padding:5px 10px;
border-radius:5px;
cursor:pointer;">
Remove
</button>
`;

cartItems.appendChild(li);

});

document.getElementById(
"totalPrice"
).innerText = totalPrice;

document.getElementById(
"cartCount"
).innerText = cart.length;
}

// Remove Item

function removeItem(index){

totalPrice -= cart[index].price;

cart.splice(index,1);

updateCart();
}

// Checkout

function checkout(){

if(cart.length===0){

alert("Your cart is empty");

return;
}

alert(
"Order placed successfully!"
);

cart = [];

totalPrice = 0;

updateCart();
}

// Product Search

const searchInput =
document.querySelector(
".search-box input"
);

searchInput.addEventListener(
"keyup",
function(){

let value =
this.value.toLowerCase();

let cards =
document.querySelectorAll(
".product-card"
);

cards.forEach(card=>{

let product =
card.querySelector(
"h3"
).innerText.toLowerCase();

if(product.includes(value)){

card.style.display="block";

}else{

card.style.display="none";
}

});

});

// Registration

const registerButton =
document.querySelector(
".register-section button"
);

registerButton.addEventListener(
"click",
function(){

let inputs =
document.querySelectorAll(
".register-section input"
);

let user = {

name: inputs[0].value,
email: inputs[1].value,
phone: inputs[2].value,
address: inputs[3].value,
city: inputs[4].value,
state: inputs[5].value,
pincode: inputs[6].value,
password: inputs[7].value

};

localStorage.setItem(
"user",
JSON.stringify(user)
);

alert(
"Registration Successful"
);

});

// Login

const loginButton =
document.querySelector(
".login-section button"
);

loginButton.addEventListener(
"click",
function(){

let email =
document.querySelectorAll(
".login-section input"
)[0].value;

let password =
document.querySelectorAll(
".login-section input"
)[1].value;

let user =
JSON.parse(
localStorage.getItem(
"user"
)
);

if(
user &&
user.email===email &&
user.password===password
){

alert(
"Login Successful"
);

}else{

alert(
"Invalid Email or Password"
);

}

});

</script>

</body>
</html>
