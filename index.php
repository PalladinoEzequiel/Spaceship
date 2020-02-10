<?php 
  session_start(); 

  if (isset($_GET['logout'])) {
  	session_destroy();
  	unset($_SESSION['username']);
  	header("location: login/index.php");
  }
?>

<link href="https://fonts.googleapis.com/css?family=IBM+Plex+Mono&display=swap" rel="stylesheet">
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>Spaceship</title>
<script>
//define vars as global
var jsonData = "wrong";
var randomNumber = "empty";
var randomName = "uhoh";
var randomValue = "nice";
var audio;

var pepsecret = new Boolean(false);
// a key map of allowed keys
var allowedKeys = {
  37: 'left',
  38: 'up',
  39: 'right',
  40: 'down',
  65: 'a',
  66: 'b'
};



// the 'official' Konami Code sequence
var konamiCode = ['up', 'up', 'down', 'down', 'left', 'right', 'left', 'right', 'b', 'a'];

// a variable to remember the 'position' the user has reached so far.
var konamiCodePosition = 0;

// add keydown event listener
document.addEventListener('keydown', function(e) {
  // get the value of the key code from the key map
  var key = allowedKeys[e.keyCode];
  // get the value of the required key from the konami code
  var requiredKey = konamiCode[konamiCodePosition];

  // compare the key with the required key
  if (key == requiredKey) {

    // move to the next key in the konami code sequence
    konamiCodePosition++;

    // if the last key is reached, activate cheats
    if (konamiCodePosition == konamiCode.length) {
      activateCheats();
      konamiCodePosition = 0;
    }
  } else {
    konamiCodePosition = 0;
  }
});

function activateCheats() {
	if (typeof audio !== 'undefined') {
		if (audio.paused == false) {
			 audio.pause();//pause if playing
		}
	}
  document.body.style.backgroundImage = "url('https://cdn.discordapp.com/attachments/408810071917854721/630914300839723017/IMG-20191004-WA0149.jpg')";
	pepsecret = true;
  var audio = new Audio('http://23.237.126.42/ost/earthbound-snes/tihacsjclc/42%20Battle%20Against%20a%20Weird%20Opponent.mp3');
  audio.play();

  alert("epico momento gamer");
  document.getElementById("myP").style.visibility = "visible";
  const randomName = "??????????"
  var x = document.getElementById("newtext");
    x.innerHTML = randomName;
  
}
</script>

<style>
  body{
    background-image: url('https://media1.giphy.com/media/t4DcI9P3dNVoA/giphy.gif');
    background-size: cover;
    
    height: 100vh;
    padding:0;
    margin:0;
    background-position: center; 
}
  #cent {
  position:absolute;
  top:50%;
  left:50%;
  margin-top:-86px; /* this is half the height of your div*/  
  margin-left:-199px; /*this is half of width of your div*/
  background-color: white;
}
  
  .font-old {
  	font-family: 'IBM Plex Mono', monospace;
  }
</style>
<link rel="shortcut icon" href="https://media1.tenor.com/images/fca14e30a27aff8b3a0740744c6105ef/tenor.gif?itemid=13485574" type="image/x-icon" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

<body>
 
<div class="card text-white bg-dark font-old" style="width: 25rem;" id="cent">
  <div class="card-body">
    <h5 class="card-title">Spaceship.fm</h5>
    <h6 class="card-subtitle mb-2 text-muted">Estás escuchando:</h6>
    <p class="card-text">🎵 <i><label id="newtext">Presioná PLAY para escuchar!</label></i></p>
    <a href="#" onclick="reproMusica();" id="nextSong" class="card-link">▶️</a>
    <a href="#" onclick="pauseMusic();" id="musicPauser" class="card-link">⏸️</a>
	<?php  if (isset($_SESSION['username'])) : $randomName = ""; $randomValue = "";?>
		<a href="#" onclick="heartComment();" class="card-link">❤️</a>
		<a href="favorites/" class="card-link">👨 <?php echo $_SESSION['username']; ?></a>
	<?php endif ?>
	<?php  if (!isset($_SESSION['username'])) : ?>
		<a href="login/" onclick="pauseMusic();" class="card-link">👨 Iniciá sesión</a>
	<?php endif ?>
	
		<a href="secret/" class="card-link" style="color: yellow" id="myP">Investigar</a>
		<script> if (pepsecret == true) { document.getElementById("myP").style.visibility = "visible";  } else { document.getElementById("myP").style.visibility = "hidden";  }</script>
  </div>
</div>

<script>

function startRandomMus() {
  var hour = 69;
  var nameofsong = "Música copada";
 
	// DATA DE LA BASE DE DATOS
	var yourUrl = "http://localhost/spaceship/api/v1/getData.php?f=json&t=musica";
	var xhReq = new XMLHttpRequest();
	xhReq.open("GET", yourUrl, false);
	xhReq.send(null);
	jsonData = JSON.parse(xhReq.responseText);
	console.log(jsonData.data);
	
	randomNumber = parseInt(Math.random() * jsonData.data.length)
	console.log(jsonData.data.length)
	randomName = jsonData.data[randomNumber][2] + " - " + jsonData.data[randomNumber][3]
	randomValue = jsonData.data[randomNumber][1]
	
	var url = new URL(window.location);
	var params = new URLSearchParams(url.search);
	
	if (params.has('song')) {
		randomValue = params.get('song')
		randomName = params.get('name')
	}
	
	console.log(randomName)
	console.log(randomValue)
	
	var x = document.getElementById("newtext");
    x.innerHTML = randomName;
	var y = document.getElementById("nextSong");
	y.innerHTML = "⏭️"
	audio = new Audio(randomValue);
    audio.play();
}

function reproMusica() {
	var y = document.getElementById("nextSong");
	if (y.innerHTML = "▶️") {
		if (typeof audio !== 'undefined') {
			if (audio.paused == false) {
				 audio.pause();//pause if playing
			}
		}
	}
	startRandomMus();
}

if (audio) {
	audio.addEventListener('ended',function(){
		  startRandomMus();
    });
}

	function pauseMusic() {
		var btn = document.getElementById('musicPauser');
		  console.log(audio.paused)
		  if (typeof audio !== 'undefined') {
			 if (audio.paused == false) {
			  audio.pause();//pause if playing
			  musicPauser.innerHTML = "▶️"
			  
			} else {
			  audio.play();//Play If Pausing
			  musicPauser.innerHTML = "⏸️"
			}
		  }
	}
	
	function heartComment() {
		console.log(randomValue)
		document.body.innerHTML += '<form id="dynForm" action="favorites/addsong.php" method="post"><input type="hidden" name="link" value="' + randomValue + '"><input type="hidden" name="name" value="' + randomName + '"><input type="hidden" name="img" value="' + jsonData.data[randomNumber][4] + '"></form>';
		document.getElementById("dynForm").submit();
	}
</script>

</div>