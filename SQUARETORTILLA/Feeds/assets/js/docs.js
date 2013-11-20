//cookie stuff

   function getIEVersion() {
        if (/MSIE (\d+\.\d+);/.test(navigator.userAgent)) { 
        /*
         * sample user-Agent
         * "Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1; WOW64; Trident/6.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)" 
         */
         //test for MSIE x.x;
         var ieversion = new Number(RegExp.$1); // capture x.x portion and store as a number
         return ieversion;
        }
    return -1;
    }

   // alert(getIEVersion());
	
function getCookie(NameOfCookie){
    if (document.cookie.length > 0) {              
    begin = document.cookie.indexOf(NameOfCookie+"=");       
    if (begin != -1) {           
      begin += NameOfCookie.length+1;       
      end = document.cookie.indexOf(";", begin);
      if (end == -1) end = document.cookie.length;
        return unescape(document.cookie.substring(begin, end));
    } 
  }
  return null;
}

function setCookie(NameOfCookie, value, expiredays) {
var ExpireDate = new Date ();
ExpireDate.setTime(ExpireDate.getTime() + (expiredays * 24 * 3600 * 1000));

  document.cookie = NameOfCookie + "=" + escape(value) + 
  ((expiredays == null) ? "" : "; expires=" + ExpireDate.toGMTString());
}

function delCookie (NameOfCookie) {
  if (getCookie(NameOfCookie)) {
    document.cookie = NameOfCookie + "=" +
    "; expires=Thu, 01-Jan-70 00:00:01 GMT";
  }
}

function DoTheCookieStuff()
{
 visited=getCookie('visited');
 if (visited==null) 
 {
setCookie('visited','yes',365)
			var isFirefox = /Firefox[\/\s](\d+\.\d+)/.test(navigator.userAgent);
			var isMSIE = /MSIE (\d+\.\d+);/.test(navigator.userAgent);
			var isChrome = /Chrome/.test(navigator.userAgent) && /Google Inc/.test(navigator.vendor);
			var isSafari = /Safari/.test(navigator.userAgent) && /Apple Computer/.test(navigator.vendor);
			
			
			if (isChrome) $('#addcontentyt').modal('show');
			if (isSafari) $('#addcontentyt').modal('show');
			if (isMSIE) $('#oldbrowser').modal('show');
			if (isFirefox) $('#firefox').modal('show');
			
 }
}

(function ($) {
    "use strict";

    // Detecting IE
    var oldIE;
    if ($('html').is('.ie6, .ie7, .ie8')) {
        oldIE = true;
    }

    if (oldIE) {
        alert('You are using an outdated browser. Please upgrade your browser or use Chrome or Safari.');
    } else {
      
    }

}(jQuery));
//phone number character limiter

function isValidChar(char){

        var txt = char;
        var found = false;
        var validChars = "0123456789-.() "; //List of valid characters

        for(j=0;j<txt.length;j++){ //Will look through the value of text
            var c = txt.charAt(j);
            found = false;
            for(x=0;x<validChars.length;x++){
                if(c==validChars.charAt(x)){
                    found=true;
                    break;
                }
            }
            if(!found){
                //If invalid character is found remove it and return the valid character(s).
                document.getElementById('txtFld').value = char.substring(0, char.length -1);
                break;
            }
        }
    }





/**
 * 
 * index.html scripts
 * 
 */
!function(root, $) {
    /**
     * Fetch latest commits from Github API and cache them
     * @link https://gist.github.com/4520294
     * 
     */
    root["ghcommits"] = {
        "repo_name": "xaguilars/bootstrap-colorpicker",
        "cache_enabled": true, //cache api responses?
        "cache_ttl": (2 * 60 * 60), // 2h (in seconds)
        "onload": {},
        "callback": function() {
        },
        "load": function(count, onload) {
            var $self = this;
            count = count || 10;
            $self.onload = onload || function() {
            };

            if ($self.cache_enabled && root["localStorage"]) {
                var cache_key = "repo_commits";
                var expiration = localStorage.getItem(cache_key + "_expiration");
                if (expiration && (expiration < +new Date())) {
                    localStorage.removeItem(cache_key);
                    localStorage.removeItem(cache_key + "_expiration");
                    expiration = false;
                }
                var commits = localStorage.getItem(cache_key);
                if (commits) {
                    if (root["console"])
                        console.info("Commit data feched from localStorage");
                    $self.store(JSON.parse(commits), false);
                    $self.onload($self.data);
                    return;
                }
            }
            $self.query(count);
        },
        "store": function(commitsJson, cache) {
            var $self = this;
            $self.data = commitsJson;
            if (cache && root["localStorage"]) {
                localStorage.setItem("repo_commits", JSON.stringify(commitsJson));
                localStorage.setItem("repo_commits_expiration", +new Date() + 1000 * $self.cache_ttl);
            }
        },
        "query": function(count) {
            var $self = this;
            var query_url = 'https://api.github.com/repos/' + $self.repo_name + '/commits?per_page=' + count;
            console.info("Fetching commit data from " + query_url);
            $.ajax({'dataType': "jsonp", 'url': query_url, 'jsonpCallback': 'ghcommits._jsonpcb'});
        },
        "_jsonpcb": function(jsonpresp) {
            ghcommits.store(jsonpresp.data, ghcommits.cache_enabled);
            ghcommits.onload(ghcommits.data);
        }
    }

    // App
    $(function() {
        root.prettyPrint && prettyPrint();
        var _createColorpickers = function(){
            $('#cp1').colorpicker({
                format: 'hex'
            });
            $('#cp2').colorpicker();
            $('#barbottom').colorpicker();
			 $('#bartop').colorpicker();
			  $('#iconcolor').colorpicker();
			  $('#textcolor').colorpicker();
            var bodyStyle = $('body')[0].style;
            $('#cp4').colorpicker().on('changeColor', function(ev) {
                bodyStyle.backgroundColor = ev.color.toHex();
            });
        }
        
        _createColorpickers();
        
        $('.bscp-destroy').click(function(e){
            e.preventDefault();
            $('.bscp').colorpicker('destroy');
        });
        
        $('.bscp-create').click(function(e){
            e.preventDefault();
            _createColorpickers();
        });

        try {
            // load latest commits under a try to not paralize the app
            ghcommits.load(10, function(data) {
                if (data && (data.length > 0)) {
                    $(data).each(function(i, item) {
                        $("#changelog ul").append($('<li>').html("<b>" + item.commit.author
                                .date.replace("T", " ").replace("Z", "") +
                                ":</b> " + item.commit.message));
                    });
                }

            });
        } catch (err) {
        }
    });
}(window, window.jQuery);






