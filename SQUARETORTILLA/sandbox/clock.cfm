<cfsetting showdebugoutput="no">


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Clock</title>
<style>
body { background: #eee; margin: 20px; }

ul li { display: inline-block; vertical-align:top;}

ul li h1 {
    padding: 0 3px;
    font: normal 11px/20px 'Helvetica Neue', sans-serif;
    color: #bbb;
    text-transform: uppercase;
    text-shadow: 0 1px 0 #fff;
}

/* bg */

.foldable {
    position: relative;
    display: inline-block;
    margin: 0 15px 15px 0;
    border: 1px solid #000;
    border-radius: 6px; 
    box-shadow: 0 1px 2px rgba(0,0,0,.3) ,0 1px 0 rgba(255,255,255,.3) inset ,0 0 1px rgba(255,255,255,.3) inset; 
    background: rgb(68,68,68); 
    background: linear-gradient(top, rgba(68,68,68,1) 0%,rgba(34,34,34,1) 50%,rgba(51,51,51,1) 50.01%,rgba(34,34,34,1) 100%); 
    font: normal 11px/20px 'Helvetica Neue', sans-serif;
    color: #eee;
    letter-spacing:1px;
    text-transform: uppercase;
    text-shadow: 0 -1px 0 #000;
}

/* cut */

.foldable:before {
    position: absolute;
    content: "";
    height: 1px;
    top: 50%;
    left: 0;
    right: 0;
    background: rgba(0,0,0,.5);
    box-shadow: 0 1px 0 rgba(255,255,255,.1); 
}

/* content */

.foldable span {
    display:inline-block;
    padding: 10px 5px 6px;
    border-right: 1px solid rgba(0,0,0,.3);
    box-shadow: 1px 0 0 rgba(255,255,255,.05), -1px 0 0 rgba(255,255,255,.05) inset    ; 
    font: normal 28px/20px 'Helvetica Neue', sans-serif;
}

/* fastening */

.foldable span:before, .foldable span:after {
    position: relative;
    top: -3px;
    left: -4px;
    content: ":";
    color: #000;
    text-shadow: 0 1px 0 rgba(255,255,255,.2);
}

.foldable span:after {
    content: ":";
    right: -4px;
    left: auto;
}

.foldable span:last-child { border-right:none; -moz-box-shadow: none; -webkit-box-shadow: none; box-shadow: none; }​
</style>

</head>



<body>




<script language="JavaScript">
TargetDate = "12/31/2020 5:00 AM";
BackColor = "palegreen";
ForeColor = "navy";
CountActive = true;
CountStepper = -1;
LeadingZero = true;
DisplayFormat = "%%D%% Days, %%H%% Hours, %%M%% Minutes, %%S%% Seconds.";
FinishMessage = "It is finally here!";
</script>
<script language="JavaScript" src="http://scripts.hashemian.com/js/countdown.js"></script>


<span id="cntdwn"><b>3093</b> Days, <b>14</b> Hours, <b>38</b> Minutes, <b>36</b> Seconds.</span>
<ul>
  <!--  <li>
        <h1>destination</h1>
        <span class="foldable">
            <span>(FRA) Frankfurt Airport</span>
        </span>
    </li>
    <li>
        <h1>airline</h1>
        <span class="foldable">
            <span>Lufthansa</span>
        </span>
    </li>
    <li>
        <h1>date</h1>
        <span class="foldable">
            <span>2011</span>
            <span>Jul</span>
            <span>02</span>
        </span>
    </li>-->
    <li>
        <h1>time</h1>
        <span class="foldable">
            <span>11</span>
            <span>00</span>
            <span><b>36</b> Seconds</span>
        </span>
    </li>
</ul>





</body>
</html>