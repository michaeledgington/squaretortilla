// JavaScript Document

//hex to rgba----------------

$('input').focus(function () {
  this.select();
});

$('#hex').bind('blur keydown', function (event) {
  var el = this;
  setTimeout(function () {
    var rgb = [],
        $input = $(el),
        fail = false,
        original = $input.val(),
        hex = (original+'').replace(/#/, '');

    if (original.length === 1 && original !== '#') {
      $input.val('#' + original);
    }

    if (hex.length == 3) hex = hex + hex;
    for (var i = 0; i < 6; i+=2) {
      rgb.push(parseInt(hex.substr(i,2),16));
      fail = fail || rgb[rgb.length - 1].toString() === 'NaN';
    }

    $('#rgb').val(fail ? '' : 'rgba(' + rgb.join(',') + ',1) ');
    $('#hsl').val(fail ? '' : 'hsl(' + rgbToHsl.apply(null, rgb).join(',') + ')')
    bgcolour($('#rgb').val());    
  }, 13);
});

$('hexdiv').bind('click', function () {
  $('#hex').focus();
}).find('input').bind('click', function () {
  return false
});

function bgcolour(c) {
  $('hexdiv').css('backgroundColor', c);
}

// from http://mjijackson.com/2008/02/rgb-to-hsl-and-rgb-to-hsv-color-model-conversion-algorithms-in-javascript
function rgbToHsl(r, g, b){
  r /= 255, g /= 255, b /= 255;
  var max = Math.max(r, g, b), min = Math.min(r, g, b);
  var h, s, l = (max + min) / 2;

  if (max == min) {
      h = s = 0; // achromatic
  } else {
      var d = max - min;
      s = l > 0.5 ? d / (2 - max - min) : d / (max + min);
      switch (max){
          case r: h = (g - b) / d + (g < b ? 6 : 0); break;
          case g: h = (b - r) / d + 2; break;
          case b: h = (r - g) / d + 4; break;
      }
      h /= 6;
  }

  return [(h*100+0.5)|0, ((s*100+0.5)|0) + '%', ((l*100+0.5)|0) + '%'];
}




function makekwred()
{
	 if(chkkw.checked == true) {
		var barbotrgba = document.getElementById("barbotrgba");
		var bartoprgba = document.getElementById("bartoprgba");
		var iconrgba = document.getElementById("iconrgba");
		var kwredtop = document.getElementById("kwredtop");
		var kwredbot = document.getElementById("kwredbot");
	   		bartoprgba.value = kwredtop.value;
			barbotrgba.value = kwredbot.value;
			iconrgba.value = kwgreyicon.value;
	
	 }
}



function makeremax()
{
	 if(chkremax.checked == true) {
		var barbotrgba = document.getElementById("barbotrgba");
		var bartoprgba = document.getElementById("bartoprgba");
		var iconrgba = document.getElementById("iconrgba");
		var remaxtop = document.getElementById("remaxtop");
		var remaxbot = document.getElementById("remaxbot");
		var remaxicon = document.getElementById("remaxicon");
	   		bartoprgba.value = remaxtop.value;
			barbotrgba.value = remaxbot.value;
			iconrgba.value = remaxicon.value;
	
	 }
}

function chkmobblue() {
  if(mobblue.checked == true) {
	  
	  var barbotrgba = document.getElementById("barbotrgba");
		var bartoprgba = document.getElementById("bartoprgba");
		var iconrgba = document.getElementById("iconrgba");
		var mobilitybluetop = document.getElementById("mobilitybluetop");
		var mobilitybluebot = document.getElementById("mobilitybluebot");
		var mobilityblueicon = document.getElementById("mobilityblueicon");
	   		bartoprgba.value = mobilitybluetop.value;
			barbotrgba.value = mobilitybluebot.value;
			iconrgba.value = mobilityblueicon.value;
   
  }
}

function makepru() {
  if(chkpru.checked == true) {
	  
	  var barbotrgba = document.getElementById("barbotrgba");
		var bartoprgba = document.getElementById("bartoprgba");
		var iconrgba = document.getElementById("iconrgba");
		var prutop = document.getElementById("prutop");
		var prubot = document.getElementById("prubot");
		var pruicon = document.getElementById("pruicon");
	   		bartoprgba.value = prutop.value;
			barbotrgba.value = prubot.value;
			iconrgba.value = pruicon.value;
   
  }
}
function makec21() {
  if(chkc21.checked == true) {
	  
	  var barbotrgba = document.getElementById("barbotrgba");
		var bartoprgba = document.getElementById("bartoprgba");
		var iconrgba = document.getElementById("iconrgba");
		var c21top = document.getElementById("c21top");
		var c21bot = document.getElementById("c21bot");
		var c21icon = document.getElementById("c21icon");
	   		bartoprgba.value = c21top.value;
			barbotrgba.value = c21bot.value;
			iconrgba.value = c21icon.value;
   
  }
}

function makeccr() {
  if(chkccr.checked == true) {
	  
	  var barbotrgba = document.getElementById("barbotrgba");
		var bartoprgba = document.getElementById("bartoprgba");
		var iconrgba = document.getElementById("iconrgba");
		var ccrtop = document.getElementById("ccrtop");
		var ccrbot = document.getElementById("ccrbot");
		var ccricon = document.getElementById("ccricon");
	   		bartoprgba.value = ccrtop.value;
			barbotrgba.value = ccrbot.value;
			iconrgba.value = ccricon.value;
   
  }
}


function makeera() {
  if(chkera.checked == true) {
	  
	  var barbotrgba = document.getElementById("barbotrgba");
		var bartoprgba = document.getElementById("bartoprgba");
		var iconrgba = document.getElementById("iconrgba");
		var eratop = document.getElementById("eratop");
		var erabot = document.getElementById("erabot");
		var eraicon = document.getElementById("eraicon");
	   		bartoprgba.value = eratop.value;
			barbotrgba.value = erabot.value;
			iconrgba.value = eraicon.value;
   
  }
}


function makecoldwell() {
  if(chkcoldwell.checked == true) {
	  
	  var barbotrgba = document.getElementById("barbotrgba");
		var bartoprgba = document.getElementById("bartoprgba");
		var iconrgba = document.getElementById("iconrgba");
		var coldwelltop = document.getElementById("coldwelltop");
		var coldwellbot = document.getElementById("coldwellbot");
		var coldwellicon = document.getElementById("coldwellicon");
	   		bartoprgba.value = coldwelltop.value;
			barbotrgba.value = coldwellbot.value;
			iconrgba.value = coldwellicon.value;
   
  }
}

function makesotheby() {
  if(chksotheby.checked == true) {
	  
	  var barbotrgba = document.getElementById("barbotrgba");
		var bartoprgba = document.getElementById("bartoprgba");
		var iconrgba = document.getElementById("iconrgba");
		var sothebytop = document.getElementById("sothebytop");
		var sothebybot = document.getElementById("sothebybot");
		var sothebyicon = document.getElementById("sothebyicon");
	   		bartoprgba.value = sothebytop.value;
			barbotrgba.value = sothebybot.value;
			iconrgba.value = sothebyicon.value;
   
  }
}

function makerealtyone() {
  if(chkrealtyone.checked == true) {
	  
	  var barbotrgba = document.getElementById("barbotrgba");
		var bartoprgba = document.getElementById("bartoprgba");
		var iconrgba = document.getElementById("iconrgba");
		var realtyonetop = document.getElementById("realtyonetop");
		var realtyonebot = document.getElementById("realtyonebot");
		var realtyoneicon = document.getElementById("realtyoneicon");
	   		bartoprgba.value = realtyonetop.value;
			barbotrgba.value = realtyonebot.value;
			iconrgba.value = realtyoneicon.value;
   
  }
}

function makeexit() {
  if(chkexit.checked == true) {
	  
	  var barbotrgba = document.getElementById("barbotrgba");
		var bartoprgba = document.getElementById("bartoprgba");
		var iconrgba = document.getElementById("iconrgba");
		var exittop = document.getElementById("exittop");
		var exitbot = document.getElementById("exitbot");
		var exiticon = document.getElementById("exiticon");
	   		bartoprgba.value = exittop.value;
			barbotrgba.value = exitbot.value;
			iconrgba.value = exiticon.value;
   
  }
}

function makerlp() {
  if(chkrlp.checked == true) {
	  
	  var barbotrgba = document.getElementById("barbotrgba");
		var bartoprgba = document.getElementById("bartoprgba");
		var iconrgba = document.getElementById("iconrgba");
		var rlptop = document.getElementById("rlptop");
		var rlpbot = document.getElementById("rlpbot");
		var rlpicon = document.getElementById("rlpicon");
	   		bartoprgba.value = rlptop.value;
			barbotrgba.value = rlpbot.value;
			iconrgba.value = rlpicon.value;
   
  }
}

function makedarkgrey() {
  if(chkdarkgrey.checked == true) {
	  
	  var barbotrgba = document.getElementById("barbotrgba");
		var bartoprgba = document.getElementById("bartoprgba");
		var iconrgba = document.getElementById("iconrgba");
		var darkgreytop = document.getElementById("darkgreytop");
		var darkgreybot = document.getElementById("darkgreybot");
		var darkgreyicon = document.getElementById("darkgreyicon");
	   		bartoprgba.value = darkgreytop.value;
			barbotrgba.value = darkgreybot.value;
			iconrgba.value = darkgreyicon.value;
   
  }
}