<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>SocialSphere</title>

<style>
*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:'Segoe UI',sans-serif;
}

body{
background:#0f172a;
color:white;
}

header{
background:linear-gradient(90deg,#ff416c,#ff4b2b);
padding:20px;
text-align:center;
font-size:28px;
font-weight:bold;
box-shadow:0 0 20px rgba(255,65,108,.4);
}

.container{
display:grid;
grid-template-columns:300px 1fr 300px;
gap:20px;
padding:20px;
}

.card{
background:#1e293b;
padding:20px;
border-radius:20px;
box-shadow:0 0 15px rgba(0,0,0,.4);
}

.profile{
text-align:center;
}

.avatar{
width:100px;
height:100px;
border-radius:50%;
background:linear-gradient(45deg,#00f5ff,#00ff88);
margin:auto;
display:flex;
align-items:center;
justify-content:center;
font-size:40px;
font-weight:bold;
color:#000;
}

.profile h2{
margin-top:10px;
}

.stats{
display:flex;
justify-content:space-around;
margin-top:15px;
}

.stat{
text-align:center;
}

textarea{
width:100%;
height:100px;
border:none;
outline:none;
border-radius:15px;
padding:15px;
background:#334155;
color:white;
margin-bottom:10px;
resize:none;
}

button{
border:none;
padding:10px 20px;
border-radius:10px;
cursor:pointer;
font-weight:bold;
}

.post-btn{
background:#ff416c;
color:white;
}

.follow-btn{
background:#00ff88;
color:black;
margin-top:10px;
}

.post{
background:#334155;
padding:15px;
border-radius:15px;
margin-top:15px;
animation:fade .5s;
}

@keyframes fade{
from{
opacity:0;
transform:translateY(20px);
}
to{
opacity:1;
transform:translateY(0);
}
}

.post-header{
display:flex;
justify-content:space-between;
margin-bottom:10px;
}

.actions{
display:flex;
gap:15px;
margin-top:10px;
}

.like{
color:#ff416c;
cursor:pointer;
}

.comment-box{
margin-top:10px;
}

.comment-box input{
width:100%;
padding:10px;
border:none;
border-radius:10px;
background:#1e293b;
color:white;
}

.comment{
background:#1e293b;
padding:8px;
border-radius:10px;
margin-top:5px;
}

.search{
width:100%;
padding:10px;
border:none;
border-radius:10px;
background:#334155;
color:white;
margin-bottom:15px;
}

.user{
background:#334155;
padding:10px;
border-radius:10px;
margin-bottom:10px;
display:flex;
justify-content:space-between;
align-items:center;
}

.trend{
background:#334155;
padding:10px;
border-radius:10px;
margin-bottom:10px;
}

footer{
text-align:center;
padding:20px;
color:#aaa;
}

@media(max-width:900px){
.container{
grid-template-columns:1fr;
}
}
</style>
</head>

<body>

<header>🚀 SocialSphere</header>

<div class="container">

<div class="card profile">
<div class="avatar">S</div>
<h2>Surekha</h2>
<p>Full Stack Developer</p>

<div class="stats">
<div class="stat">
<h3 id="postsCount">0</h3>
<p>Posts</p>
</div>

<div class="stat">
<h3 id="followersCount">125</h3>
<p>Followers</p>
</div>

<div class="stat">
<h3 id="followingCount">85</h3>
<p>Following</p>
</div>
</div>
</div>

<div>

<div class="card">
<h2>Create Post</h2>
<textarea id="postInput" placeholder="What's on your mind?"></textarea>
<button class="post-btn" onclick="createPost()">Post</button>
</div>

<div id="posts"></div>

</div>

<div>

<div class="card">
<h2>🔍 Search Users</h2>
<input class="search" placeholder="Search..." onkeyup="searchUsers(this.value)">

<div id="users">
</div>
</div>

<div class="card" style="margin-top:20px;">
<h2>📈 Trending</h2>

<div class="trend">#WebDevelopment</div>
<div class="trend">#JavaScript</div>
<div class="trend">#Coding</div>
<div class="trend">#FullStack</div>
<div class="trend">#Internship</div>

</div>

</div>

</div>

<footer>
Made with ❤️ by Surekha
</footer>

<script>

let users=[
"Rahul",
"Priya",
"Arun",
"Sneha",
"Vijay",
"Anjali"
];

function loadUsers(){
let html="";
users.forEach(user=>{
html+=`
<div class="user">
${user}
<button class="follow-btn" onclick="follow(this)">Follow</button>
</div>
`;
});
document.getElementById("users").innerHTML=html;
}

function follow(btn){
if(btn.innerText==="Follow"){
btn.innerText="Following";
btn.style.background="#ff416c";
btn.style.color="white";

let count=document.getElementById("followingCount");
count.innerText=parseInt(count.innerText)+1;
}
else{
btn.innerText="Follow";
btn.style.background="#00ff88";
btn.style.color="black";

let count=document.getElementById("followingCount");
count.innerText=parseInt(count.innerText)-1;
}
}

function createPost(){

let input=document.getElementById("postInput");

if(input.value.trim()===""){
alert("Write something!");
return;
}

let posts=JSON.parse(localStorage.getItem("posts")) || [];

posts.unshift({
text:input.value,
likes:0,
comments:[]
});

localStorage.setItem("posts",JSON.stringify(posts));

input.value="";

loadPosts();
}

function loadPosts(){

let posts=JSON.parse(localStorage.getItem("posts")) || [];

document.getElementById("postsCount").innerText=posts.length;

let html="";

posts.forEach((post,index)=>{

html+=`
<div class="post">

<div class="post-header">
<strong>Surekha</strong>
<span>${new Date().toLocaleDateString()}</span>
</div>

<p>${post.text}</p>

<div class="actions">
<span class="like" onclick="likePost(${index})">
❤️ ${post.likes}
</span>
</div>

<div class="comment-box">
<input placeholder="Write comment..."
onkeypress="addComment(event,${index},this)">
</div>

${post.comments.map(c=>`
<div class="comment">${c}</div>
`).join("")}

</div>
`;
});

document.getElementById("posts").innerHTML=html;
}

function likePost(index){

let posts=JSON.parse(localStorage.getItem("posts"));

posts[index].likes++;

localStorage.setItem("posts",JSON.stringify(posts));

loadPosts();
}

function addComment(e,index,input){

if(e.key==="Enter"){

let posts=JSON.parse(localStorage.getItem("posts"));

posts[index].comments.push(input.value);

localStorage.setItem("posts",JSON.stringify(posts));

loadPosts();
}
}

function searchUsers(value){

let filtered=users.filter(user=>
user.toLowerCase().includes(value.toLowerCase())
);

let html="";

filtered.forEach(user=>{
html+=`
<div class="user">
${user}
<button class="follow-btn">Follow</button>
</div>
`;
});

document.getElementById("users").innerHTML=html;
}

loadUsers();
loadPosts();

</script>

</body>
</html>
