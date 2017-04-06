<!DOCTYPE html>


<head>
<meta name="csrf-param" content="authenticity_token" />
<meta name="csrf-token" content="GYFOnDW/UKzqFAzRXCgEFsWTnwZ0DyH9lpv9eDZ1wQcUeeMBoZCdPEgS/KPH+fUBOZo7xhjI8jV72a+RjX09QA==" />
<meta content='text/html; charset=UTF-8' http-equiv='Content-Type'>
<meta content='initial-scale=1.0, width=device-width, maximum-scale=1.0' name='viewport'>
<meta content='IE=Edge,chrome=1' http-equiv='X-UA-Compatible'>
<script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"bam.nr-data.net","errorBeacon":"bam.nr-data.net","licenseKey":"b024d3f061","applicationID":"4029637","transactionName":"IVtaFkMOXFVcRBtBQwdGR01DBFdQSkJGVUQLW1oRHg9VTg==","queueTime":0,"applicationTime":27,"agent":""}</script>
<script type="text/javascript">window.NREUM||(NREUM={}),__nr_require=function(e,t,n){function r(n){if(!t[n]){var o=t[n]={exports:{}};e[n][0].call(o.exports,function(t){var o=e[n][1][t];return r(o||t)},o,o.exports)}return t[n].exports}if("function"==typeof __nr_require)return __nr_require;for(var o=0;o<n.length;o++)r(n[o]);return r}({1:[function(e,t,n){function r(){}function o(e,t,n){return function(){return i(e,[(new Date).getTime()].concat(u(arguments)),t?null:this,n),t?void 0:this}}var i=e("handle"),a=e(2),u=e(3),c=e("ee").get("tracer"),f=NREUM;"undefined"==typeof window.newrelic&&(newrelic=f);var s=["setPageViewName","setCustomAttribute","setErrorHandler","finished","addToTrace","inlineHit","addRelease"],l="api-",p=l+"ixn-";a(s,function(e,t){f[t]=o(l+t,!0,"api")}),f.addPageAction=o(l+"addPageAction",!0),f.setCurrentRouteName=o(l+"routeName",!0),t.exports=newrelic,f.interaction=function(){return(new r).get()};var d=r.prototype={createTracer:function(e,t){var n={},r=this,o="function"==typeof t;return i(p+"tracer",[Date.now(),e,n],r),function(){if(c.emit((o?"":"no-")+"fn-start",[Date.now(),r,o],n),o)try{return t.apply(this,arguments)}finally{c.emit("fn-end",[Date.now()],n)}}}};a("setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","),function(e,t){d[t]=o(p+t)}),newrelic.noticeError=function(e){"string"==typeof e&&(e=new Error(e)),i("err",[e,(new Date).getTime()])}},{}],2:[function(e,t,n){function r(e,t){var n=[],r="",i=0;for(r in e)o.call(e,r)&&(n[i]=t(r,e[r]),i+=1);return n}var o=Object.prototype.hasOwnProperty;t.exports=r},{}],3:[function(e,t,n){function r(e,t,n){t||(t=0),"undefined"==typeof n&&(n=e?e.length:0);for(var r=-1,o=n-t||0,i=Array(o<0?0:o);++r<o;)i[r]=e[t+r];return i}t.exports=r},{}],ee:[function(e,t,n){function r(){}function o(e){function t(e){return e&&e instanceof r?e:e?c(e,u,i):i()}function n(n,r,o){if(!p.aborted){e&&e(n,r,o);for(var i=t(o),a=v(n),u=a.length,c=0;c<u;c++)a[c].apply(i,r);var f=s[w[n]];return f&&f.push([y,n,r,i]),i}}function d(e,t){b[e]=v(e).concat(t)}function v(e){return b[e]||[]}function g(e){return l[e]=l[e]||o(n)}function m(e,t){f(e,function(e,n){t=t||"feature",w[n]=t,t in s||(s[t]=[])})}var b={},w={},y={on:d,emit:n,get:g,listeners:v,context:t,buffer:m,abort:a,aborted:!1};return y}function i(){return new r}function a(){(s.api||s.feature)&&(p.aborted=!0,s=p.backlog={})}var u="nr@context",c=e("gos"),f=e(2),s={},l={},p=t.exports=o();p.backlog=s},{}],gos:[function(e,t,n){function r(e,t,n){if(o.call(e,t))return e[t];var r=n();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(e,t,{value:r,writable:!0,enumerable:!1}),r}catch(i){}return e[t]=r,r}var o=Object.prototype.hasOwnProperty;t.exports=r},{}],handle:[function(e,t,n){function r(e,t,n,r){o.buffer([e],r),o.emit(e,t,n)}var o=e("ee").get("handle");t.exports=r,r.ee=o},{}],id:[function(e,t,n){function r(e){var t=typeof e;return!e||"object"!==t&&"function"!==t?-1:e===window?0:a(e,i,function(){return o++})}var o=1,i="nr@id",a=e("gos");t.exports=r},{}],loader:[function(e,t,n){function r(){if(!h++){var e=y.info=NREUM.info,t=l.getElementsByTagName("script")[0];if(setTimeout(f.abort,3e4),!(e&&e.licenseKey&&e.applicationID&&t))return f.abort();c(b,function(t,n){e[t]||(e[t]=n)}),u("mark",["onload",a()],null,"api");var n=l.createElement("script");n.src="https://"+e.agent,t.parentNode.insertBefore(n,t)}}function o(){"complete"===l.readyState&&i()}function i(){u("mark",["domContent",a()],null,"api")}function a(){return(new Date).getTime()}var u=e("handle"),c=e(2),f=e("ee"),s=window,l=s.document,p="addEventListener",d="attachEvent",v=s.XMLHttpRequest,g=v&&v.prototype;NREUM.o={ST:setTimeout,CT:clearTimeout,XHR:v,REQ:s.Request,EV:s.Event,PR:s.Promise,MO:s.MutationObserver},e(1);var m=""+location,b={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-1016.min.js"},w=v&&g&&g[p]&&!/CriOS/.test(navigator.userAgent),y=t.exports={offset:a(),origin:m,features:{},xhrWrappable:w};l[p]?(l[p]("DOMContentLoaded",i,!1),s[p]("load",r,!1)):(l[d]("onreadystatechange",o),s[d]("onload",r)),u("mark",["firstbyte",a()],null,"api");var h=0},{}]},{},["loader"]);</script>
<title>Sign Up</title>
<link rel="stylesheet" media="all" href="..\users\assets\application-1a81ad21415f450bd83630404f78ead51d563ec083c89f5eae830068c14b4ba5.css" />
<script src="..\users\assets\application-f8b220a784e62c8b96406d9ac14271b8fc1a0949e00c113ed6fcaff830368f87.js"></script>
<script src="..\users\assets\validate.js"></script>
<link rel="stylesheet" media="screen" href="..\users\password\assets\application-11b3da19acb19b1136c3d354ca7d3f9fd52297ecea314e407a4c7b500529f0c9.css" />

</head>
<body>
<script type="application/javascript">
  dataLayer = [{
  'userId': '',
  'metroId': '',
  'metroSlug': '',
  'programId': '',
  'programAbbr': '',
  'programName': '',
  'programFormat': '',
  'instanceId': '',
  'instanceType': ''
  }];
</script>
<script>
function checkNum(box) {
        var re= new RegExp(/^$|^\d{16}$/);
        if(!box.value.match(re)) {
            alert("16 numbers are required");
            document.getElementById("numbers").value = '';
        }
    }
</script>
<script>

    function check_pass(){
    if (document.getElementById('password').value==document.getElementById('confirm_password').value){
 document.getElementById('submit').disabled = false;
}
else {
 document.getElementById('submit').disabled = true;
}
    }
    </script>
    

<header class='masthead' role='banner'>
<a class="masthead-title" href="..\index.html">GetLicensed</a>
</header>
<main class='main-content' role='main'>
<div class='page'>
<div class='g-row login-form'>
<div class='g-column large-6 large-centered'>
<h2>Sign Up</h2>
<p></p>
<form class="new_user" id="new_user" action="newUser.jsp" accept-charset="UTF-8"  method="post" ><input name="utf8" type="hidden" value="&#x2713;" /><input type="hidden" name="authenticity_token" value="d9CErAi96HF2z2h3HmLu+ozUvhfxGWoiCr4rbnv5Uph6KCkxnJIl4dTJmAWFsx/tcN0a153euern/HmHwPGu3w==" />
<div class='g-row'>
<div class='g-column large-6'>
<label for="user_first_name">First name</label>
<input placeholder="First Name" autofocus="autofocus" type="text" name="user[first_name]" id="user_first_name" required />
</div>


<div class='g-column large-6'>
<label for="user_last_name">Last name</label>
<input placeholder="Last Name" type="text" name="user[last_name]" id="user_last_name" required />
</div>
</div>
<label for="user_aadhar">Aadhar</label>
<input placeholder="Your Aadhar" type="number" name="user[aadhar]" id="numbers" onFocus="this.placeholder=''" onBlur="checkNum(this); this.placeholder='Numbers'" />
<label for="user_password">Password</label>
<input placeholder="Your Password" type="password" name="user[password]" id="password" />
<label for="user_password_confirmation">Password confirmation</label>
<input placeholder="Confirm Your Password" type="password" name="user[password_confirmation]" id="confirm_password" onchange='check_pass();'/>
<input type="submit" name="commit" value="Sign Up" id="submit" class="button -fluid" data-working-message="Working&hellip;" disabled />
<label>
<input name="user[remember_me]" type="hidden" value="0" /><input type="checkbox" value="1" name="user[remember_me]" id="user_remember_me" />
Remember me
</label>
<div class='login-form_alternate-login-panel'>
Have an account?
<a href="sign_in.jsp">Sign In</a>
</div>
</form>

</div>
</div>
</div>

</main>
<script src="..\users\password\assets\application-1a556c5eb1b1f8e60877dcc8527af84218e70d9c9bce870ffed05d131d05feb7.js"></script>

</body>
</html>
