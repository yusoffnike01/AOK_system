<%@page import="FYP.DAO"%>
<%@page import="java.util.List"%>
<%@page import="FYP.pakej"%>
<%@page import="FYP.pakej"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <title>DONATE</title>
    <!-- Bootstrap -->
    <link href="css/bootstrap-4.0.0.css" rel="stylesheet">
  </head>
	<style>   /* @extend display-flex; */
display-flex, .display-flex, .display-flex-center, .signup-content, .signin-content, .social-login, .socials {
  display: flex;
  display: -webkit-flex; }

/* @extend list-type-ulli; */
list-type-ulli, .socials {
  list-style-type: none;
  margin: 0;
  padding: 0; }

/* poppins-300 - latin */
@font-face {
  font-family: 'Poppins';
  font-style: normal;
  font-weight: 300;
  src: url("../fonts/poppins/poppins-v5-latin-300.eot");
  /* IE9 Compat Modes */
  src: local("Poppins Light"), local("Poppins-Light"), url("../fonts/poppins/poppins-v5-latin-300.eot?#iefix") format("embedded-opentype"), url("../fonts/poppins/poppins-v5-latin-300.woff2") format("woff2"), url("../fonts/poppins/poppins-v5-latin-300.woff") format("woff"), url("../fonts/poppins/poppins-v5-latin-300.ttf") format("truetype"), url("../fonts/poppins/poppins-v5-latin-300.svg#Poppins") format("svg");
  /* Legacy iOS */ }
/* poppins-300italic - latin */
@font-face {
  font-family: 'Poppins';
  font-style: italic;
  font-weight: 300;
  src: url("../fonts/poppins/poppins-v5-latin-300italic.eot");
  /* IE9 Compat Modes */
  src: local("Poppins Light Italic"), local("Poppins-LightItalic"), url("../fonts/poppins/poppins-v5-latin-300italic.eot?#iefix") format("embedded-opentype"), url("../fonts/poppins/poppins-v5-latin-300italic.woff2") format("woff2"), url("../fonts/poppins/poppins-v5-latin-300italic.woff") format("woff"), url("../fonts/poppins/poppins-v5-latin-300italic.ttf") format("truetype"), url("../fonts/poppins/poppins-v5-latin-300italic.svg#Poppins") format("svg");
  /* Legacy iOS */ }
/* poppins-regular - latin */
@font-face {
  font-family: 'Poppins';
  font-style: normal;
  font-weight: 400;
  src: url("../fonts/poppins/poppins-v5-latin-regular.eot");
  /* IE9 Compat Modes */
  src: local("Poppins Regular"), local("Poppins-Regular"), url("../fonts/poppins/poppins-v5-latin-regular.eot?#iefix") format("embedded-opentype"), url("../fonts/poppins/poppins-v5-latin-regular.woff2") format("woff2"), url("../fonts/poppins/poppins-v5-latin-regular.woff") format("woff"), url("../fonts/poppins/poppins-v5-latin-regular.ttf") format("truetype"), url("../fonts/poppins/poppins-v5-latin-regular.svg#Poppins") format("svg");
  /* Legacy iOS */ }
/* poppins-italic - latin */
@font-face {
  font-family: 'Poppins';
  font-style: italic;
  font-weight: 400;
  src: url("../fonts/poppins/poppins-v5-latin-italic.eot");
  /* IE9 Compat Modes */
  src: local("Poppins Italic"), local("Poppins-Italic"), url("../fonts/poppins/poppins-v5-latin-italic.eot?#iefix") format("embedded-opentype"), url("../fonts/poppins/poppins-v5-latin-italic.woff2") format("woff2"), url("../fonts/poppins/poppins-v5-latin-italic.woff") format("woff"), url("../fonts/poppins/poppins-v5-latin-italic.ttf") format("truetype"), url("../fonts/poppins/poppins-v5-latin-italic.svg#Poppins") format("svg");
  /* Legacy iOS */ }
/* poppins-500 - latin */
@font-face {
  font-family: 'Poppins';
  font-style: normal;
  font-weight: 500;
  src: url("../fonts/poppins/poppins-v5-latin-500.eot");
  /* IE9 Compat Modes */
  src: local("Poppins Medium"), local("Poppins-Medium"), url("../fonts/poppins/poppins-v5-latin-500.eot?#iefix") format("embedded-opentype"), url("../fonts/poppins/poppins-v5-latin-500.woff2") format("woff2"), url("../fonts/poppins/poppins-v5-latin-500.woff") format("woff"), url("../fonts/poppins/poppins-v5-latin-500.ttf") format("truetype"), url("../fonts/poppins/poppins-v5-latin-500.svg#Poppins") format("svg");
  /* Legacy iOS */ }
/* poppins-500italic - latin */
@font-face {
  font-family: 'Poppins';
  font-style: italic;
  font-weight: 500;
  src: url("../fonts/poppins/poppins-v5-latin-500italic.eot");
  /* IE9 Compat Modes */
  src: local("Poppins Medium Italic"), local("Poppins-MediumItalic"), url("../fonts/poppins/poppins-v5-latin-500italic.eot?#iefix") format("embedded-opentype"), url("../fonts/poppins/poppins-v5-latin-500italic.woff2") format("woff2"), url("../fonts/poppins/poppins-v5-latin-500italic.woff") format("woff"), url("../fonts/poppins/poppins-v5-latin-500italic.ttf") format("truetype"), url("../fonts/poppins/poppins-v5-latin-500italic.svg#Poppins") format("svg");
  /* Legacy iOS */ }
/* poppins-600 - latin */
@font-face {
  font-family: 'Poppins';
  font-style: normal;
  font-weight: 600;
  src: url("../fonts/poppins/poppins-v5-latin-600.eot");
  /* IE9 Compat Modes */
  src: local("Poppins SemiBold"), local("Poppins-SemiBold"), url("../fonts/poppins/poppins-v5-latin-600.eot?#iefix") format("embedded-opentype"), url("../fonts/poppins/poppins-v5-latin-600.woff2") format("woff2"), url("../fonts/poppins/poppins-v5-latin-600.woff") format("woff"), url("../fonts/poppins/poppins-v5-latin-600.ttf") format("truetype"), url("../fonts/poppins/poppins-v5-latin-600.svg#Poppins") format("svg");
  /* Legacy iOS */ }
/* poppins-700 - latin */
@font-face {
  font-family: 'Poppins';
  font-style: normal;
  font-weight: 700;
  src: url("../fonts/poppins/poppins-v5-latin-700.eot");
  /* IE9 Compat Modes */
  src: local("Poppins Bold"), local("Poppins-Bold"), url("../fonts/poppins/poppins-v5-latin-700.eot?#iefix") format("embedded-opentype"), url("../fonts/poppins/poppins-v5-latin-700.woff2") format("woff2"), url("../fonts/poppins/poppins-v5-latin-700.woff") format("woff"), url("../fonts/poppins/poppins-v5-latin-700.ttf") format("truetype"), url("../fonts/poppins/poppins-v5-latin-700.svg#Poppins") format("svg");
  /* Legacy iOS */ }
/* poppins-700italic - latin */
@font-face {
  font-family: 'Poppins';
  font-style: italic;
  font-weight: 700;
  src: url("../fonts/poppins/poppins-v5-latin-700italic.eot");
  /* IE9 Compat Modes */
  src: local("Poppins Bold Italic"), local("Poppins-BoldItalic"), url("../fonts/poppins/poppins-v5-latin-700italic.eot?#iefix") format("embedded-opentype"), url("../fonts/poppins/poppins-v5-latin-700italic.woff2") format("woff2"), url("../fonts/poppins/poppins-v5-latin-700italic.woff") format("woff"), url("../fonts/poppins/poppins-v5-latin-700italic.ttf") format("truetype"), url("../fonts/poppins/poppins-v5-latin-700italic.svg#Poppins") format("svg");
  /* Legacy iOS */ }
/* poppins-800 - latin */
@font-face {
  font-family: 'Poppins';
  font-style: normal;
  font-weight: 800;
  src: url("../fonts/poppins/poppins-v5-latin-800.eot");
  /* IE9 Compat Modes */
  src: local("Poppins ExtraBold"), local("Poppins-ExtraBold"), url("../fonts/poppins/poppins-v5-latin-800.eot?#iefix") format("embedded-opentype"), url("../fonts/poppins/poppins-v5-latin-800.woff2") format("woff2"), url("../fonts/poppins/poppins-v5-latin-800.woff") format("woff"), url("../fonts/poppins/poppins-v5-latin-800.ttf") format("truetype"), url("../fonts/poppins/poppins-v5-latin-800.svg#Poppins") format("svg");
  /* Legacy iOS */ }
/* poppins-800italic - latin */
@font-face {
  font-family: 'Poppins';
  font-style: italic;
  font-weight: 800;
  src: url("../fonts/poppins/poppins-v5-latin-800italic.eot");
  /* IE9 Compat Modes */
  src: local("Poppins ExtraBold Italic"), local("Poppins-ExtraBoldItalic"), url("../fonts/poppins/poppins-v5-latin-800italic.eot?#iefix") format("embedded-opentype"), url("../fonts/poppins/poppins-v5-latin-800italic.woff2") format("woff2"), url("../fonts/poppins/poppins-v5-latin-800italic.woff") format("woff"), url("../fonts/poppins/poppins-v5-latin-800italic.ttf") format("truetype"), url("../fonts/poppins/poppins-v5-latin-800italic.svg#Poppins") format("svg");
  /* Legacy iOS */ }
/* poppins-900 - latin */
@font-face {
  font-family: 'Poppins';
  font-style: normal;
  font-weight: 900;
  src: url("../fonts/poppins/poppins-v5-latin-900.eot");
  /* IE9 Compat Modes */
  src: local("Poppins Black"), local("Poppins-Black"), url("../fonts/poppins/poppins-v5-latin-900.eot?#iefix") format("embedded-opentype"), url("../fonts/poppins/poppins-v5-latin-900.woff2") format("woff2"), url("../fonts/poppins/poppins-v5-latin-900.woff") format("woff"), url("../fonts/poppins/poppins-v5-latin-900.ttf") format("truetype"), url("../fonts/poppins/poppins-v5-latin-900.svg#Poppins") format("svg");
  /* Legacy iOS */ }
a:focus, a:active {
  text-decoration: none;
  outline: none;
  transition: all 300ms ease 0s;
  -moz-transition: all 300ms ease 0s;
  -webkit-transition: all 300ms ease 0s;
  -o-transition: all 300ms ease 0s;
  -ms-transition: all 300ms ease 0s; }

input, select, textarea {
  outline: none;
  appearance: unset !important;
  -moz-appearance: unset !important;
  -webkit-appearance: unset !important;
  -o-appearance: unset !important;
  -ms-appearance: unset !important; }

input::-webkit-outer-spin-button, input::-webkit-inner-spin-button {
  appearance: none !important;
  -moz-appearance: none !important;
  -webkit-appearance: none !important;
  -o-appearance: none !important;
  -ms-appearance: none !important;
  margin: 0; }

input:focus, select:focus, textarea:focus {
  outline: none;
  box-shadow: none !important;
  -moz-box-shadow: none !important;
  -webkit-box-shadow: none !important;
  -o-box-shadow: none !important;
  -ms-box-shadow: none !important; }

input[type=checkbox] {
  appearance: checkbox !important;
  -moz-appearance: checkbox !important;
  -webkit-appearance: checkbox !important;
  -o-appearance: checkbox !important;
  -ms-appearance: checkbox !important; }

input[type=radio] {
  appearance: radio !important;
  -moz-appearance: radio !important;
  -webkit-appearance: radio !important;
  -o-appearance: radio !important;
  -ms-appearance: radio !important; }

img {
  max-width: 100%;
  height: auto; }

figure {
  margin: 0; }

p {
  margin-bottom: 0px;
  font-size: 15px;
  color: #777; }

h2 {
  line-height: 1.66;
  margin: 0;
  padding: 0;
  font-weight: bold;
  color: #222;
  font-family: Poppins;
  font-size: 36px; }

.main {
  background: #f8f8f8;
  padding: 150px 0; }

.clear {
  clear: both; }

body {
  font-size: 13px;
  line-height: 1.8;
  color: #222;
  background: #f8f8f8;
  font-weight: 400;
  font-family: Poppins; }

.container {
  width: 900px;
  background: #fff;
  margin: 0 auto;
  box-shadow: 0px 15px 16.83px 0.17px rgba(0, 0, 0, 0.05);
  -moz-box-shadow: 0px 15px 16.83px 0.17px rgba(0, 0, 0, 0.05);
  -webkit-box-shadow: 0px 15px 16.83px 0.17px rgba(0, 0, 0, 0.05);
  -o-box-shadow: 0px 15px 16.83px 0.17px rgba(0, 0, 0, 0.05);
  -ms-box-shadow: 0px 15px 16.83px 0.17px rgba(0, 0, 0, 0.05);
  border-radius: 20px;
  -moz-border-radius: 20px;
  -webkit-border-radius: 20px;
  -o-border-radius: 20px;
  -ms-border-radius: 20px; }

.display-flex {
  justify-content: space-between;
  -moz-justify-content: space-between;
  -webkit-justify-content: space-between;
  -o-justify-content: space-between;
  -ms-justify-content: space-between;
  align-items: center;
  -moz-align-items: center;
  -webkit-align-items: center;
  -o-align-items: center;
  -ms-align-items: center; }

.display-flex-center {
  justify-content: center;
  -moz-justify-content: center;
  -webkit-justify-content: center;
  -o-justify-content: center;
  -ms-justify-content: center;
  align-items: center;
  -moz-align-items: center;
  -webkit-align-items: center;
  -o-align-items: center;
  -ms-align-items: center; }

.position-center {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  -moz-transform: translate(-50%, -50%);
  -webkit-transform: translate(-50%, -50%);
  -o-transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%); }

.signup {
  margin-bottom: 150px; }

.signup-content {
  padding: 75px 0; }

.signup-form, .signup-image, .signin-form, .signin-image {
  width: 50%;
  overflow: hidden; }

.signup-image {
  margin: 0 55px; }

.form-title {
  margin-bottom: 33px; }

.signup-image {
  margin-top: 45px; }

figure {
  margin-bottom: 50px;
  text-align: center; }

.form-submit {
  display: inline-block;
  background: #6dabe4;
  color: #fff;
  border-bottom: none;
  width: auto;
  padding: 15px 39px;
  border-radius: 5px;
  -moz-border-radius: 5px;
  -webkit-border-radius: 5px;
  -o-border-radius: 5px;
  -ms-border-radius: 5px;
  margin-top: 25px;
  cursor: pointer; }
  .form-submit:hover {
    background: #4292dc; }

#signin {
  margin-top: 16px; }

.signup-image-link {
  font-size: 14px;
  color: #222;
  display: block;
  text-align: center; }

.term-service {
  font-size: 13px;
  color: #222; }

.signup-form {
  margin-left: 75px;
  margin-right: 75px;
  padding-left: 34px; }

.register-form {
  width: 100%; }

.form-group {
  position: relative;
  margin-bottom: 25px;
  overflow: hidden; }
  .form-group:last-child {
    margin-bottom: 0px; }

input {
  width: 100%;
  display: block;
  border: none;
  border-bottom: 1px solid #999;
  
  font-family: Poppins;
  box-sizing: border-box; }
  input::-webkit-input-placeholder {
    color: #999; }
  input::-moz-placeholder {
    color: #999; }
  input:-ms-input-placeholder {
    color: #999; }
  input:-moz-placeholder {
    color: #999; }
  input:focus {
    border-bottom: 1px solid #222; }
    input:focus::-webkit-input-placeholder {
      color: #222; }
    input:focus::-moz-placeholder {
      color: #222; }
    input:focus:-ms-input-placeholder {
      color: #222; }
    input:focus:-moz-placeholder {
      color: #222; }

input[type=checkbox]:not(old) {
  width: 2em;
  margin: 0;
  padding: 0;
  font-size: 1em;
  display: none; }

input[type=checkbox]:not(old) + label {
  display: inline-block;
  line-height: 1.5em;
  margin-top: 6px; }

input[type=checkbox]:not(old) + label > span {
  display: inline-block;
  width: 13px;
  height: 13px;
  margin-right: 15px;
  margin-bottom: 3px;
  border: 1px solid #999;
  border-radius: 2px;
  -moz-border-radius: 2px;
  -webkit-border-radius: 2px;
  -o-border-radius: 2px;
  -ms-border-radius: 2px;
  background: white;
  background-image: -moz-linear-gradient(white, white);
  background-image: -ms-linear-gradient(white, white);
  background-image: -o-linear-gradient(white, white);
  background-image: -webkit-linear-gradient(white, white);
  background-image: linear-gradient(white, white);
  vertical-align: bottom; }

input[type=checkbox]:not(old):checked + label > span {
  background-image: -moz-linear-gradient(white, white);
  background-image: -ms-linear-gradient(white, white);
  background-image: -o-linear-gradient(white, white);
  background-image: -webkit-linear-gradient(white, white);
  background-image: linear-gradient(white, white); }

input[type=checkbox]:not(old):checked + label > span:before {
  content: '\f26b';
  display: block;
  color: #222;
  font-size: 11px;
  line-height: 1.2;
  text-align: center;
  font-family: 'Material-Design-Iconic-Font';
  font-weight: bold; }

.agree-term {
  display: inline-block;
  width: auto; }

label {
  position: absolute;
  left: 0;
  top: 50%;
  transform: translateY(-50%);
  -moz-transform: translateY(-50%);
  -webkit-transform: translateY(-50%);
  -o-transform: translateY(-50%);
  -ms-transform: translateY(-50%);
  color: #222; }

.label-has-error {
  top: 22%; }

label.error {
  position: relative;
  background: url("../images/unchecked.gif") no-repeat;
  background-position-y: 3px;
  padding-left: 20px;
  display: block;
  margin-top: 20px; }

label.valid {
  display: block;
  position: absolute;
  right: 0;
  left: auto;
  margin-top: -6px;
  width: 20px;
  height: 20px;
  background: transparent; }
  label.valid:after {
    font-family: 'Material-Design-Iconic-Font';
    content: '\f269';
    width: 100%;
    height: 100%;
    position: absolute;
    /* right: 0; */
    font-size: 16px;
    color: green; }

.label-agree-term {
  position: relative;
  top: 0%;
  transform: translateY(0);
  -moz-transform: translateY(0);
  -webkit-transform: translateY(0);
  -o-transform: translateY(0);
  -ms-transform: translateY(0); }

.material-icons-name {
  font-size: 18px; }

.signin-content {
  padding-top: 67px;
  padding-bottom: 87px; }

.social-login {
  align-items: center;
  -moz-align-items: center;
  -webkit-align-items: center;
  -o-align-items: center;
  -ms-align-items: center;
  margin-top: 80px; }

.social-label {
  display: inline-block;
  margin-right: 15px; }

.socials li {
  padding: 5px; }
  .socials li:last-child {
    margin-right: 0px; }
  .socials li a {
    text-decoration: none; }
    .socials li a i {
      width: 30px;
      height: 30px;
      color: #fff;
      font-size: 14px;
      border-radius: 5px;
      -moz-border-radius: 5px;
      -webkit-border-radius: 5px;
      -o-border-radius: 5px;
      -ms-border-radius: 5px;
      transform: translateZ(0);
      -moz-transform: translateZ(0);
      -webkit-transform: translateZ(0);
      -o-transform: translateZ(0);
      -ms-transform: translateZ(0);
      -webkit-transition-duration: 0.3s;
      transition-duration: 0.3s;
      -webkit-transition-property: transform;
      transition-property: transform;
      -webkit-transition-timing-function: ease-out;
      transition-timing-function: ease-out; }
  .socials li:hover a i {
    -webkit-transform: scale(1.3) translateZ(0);
    transform: scale(1.3) translateZ(0); }

.zmdi-facebook {
  background: #3b5998; }

.zmdi-twitter {
  background: #1da0f2; }

.zmdi-google {
  background: #e72734; }

.signin-form {
  margin-right: 90px;
  margin-left: 80px; }

.signin-image {
  margin-left: 110px;
  margin-right: 20px;
  margin-top: 10px; }

@media screen and (max-width: 1200px) {
  .container {
    width: calc( 100% - 30px);
    max-width: 100%; } }
@media screen and (min-width: 1024px) {
  .container {
    max-width: 1200px; } }
@media screen and (max-width: 768px) {
  .signup-content, .signin-content {
    flex-direction: column;
    -moz-flex-direction: column;
    -webkit-flex-direction: column;
    -o-flex-direction: column;
    -ms-flex-direction: column;
    justify-content: center;
    -moz-justify-content: center;
    -webkit-justify-content: center;
    -o-justify-content: center;
    -ms-justify-content: center; }

  .signup-form {
    margin-left: 0px;
    margin-right: 0px;
    padding-left: 0px;
    /* box-sizing: border-box; */
    padding: 0 30px; }

  .signin-image {
    margin-left: 0px;
    margin-right: 0px;
    margin-top: 50px;
    order: 2;
    -moz-order: 2;
    -webkit-order: 2;
    -o-order: 2;
    -ms-order: 2; }

  .signup-form, .signup-image, .signin-form, .signin-image {
    width: auto; }

  .social-login {
    justify-content: center;
    -moz-justify-content: center;
    -webkit-justify-content: center;
    -o-justify-content: center;
    -ms-justify-content: center; }

  .form-button {
    text-align: center; }

  .signin-form {
    order: 1;
    -moz-order: 1;
    -webkit-order: 1;
    -o-order: 1;
    -ms-order: 1;
    margin-right: 0px;
    margin-left: 0px;
    padding: 0 30px; }

  .form-title {
    text-align: center; } }
@media screen and (max-width: 400px) {
  .social-login {
    flex-direction: column;
    -moz-flex-direction: column;
    -webkit-flex-direction: column;
    -o-flex-direction: column;
    -ms-flex-direction: column; }

  .social-label {
    margin-right: 0px;
    margin-bottom: 10px; } }

	/*# sourceMappingURL=style.css.map */</style>

<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
		<img class="nav-logo" src="IMAGE/1576234344205.png" width="45px" alt="AOKUMT">
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item"> <a class="nav-link" href="homepage.html">Home <span class="sr-only">(current)</span></a> </li>
                    <li class="nav-item"> <a class="nav-link" href="aboutUs.html">About Us</a> </li>
                    <li class="nav-item"> <a class="nav-link" href="volunteer.html">Volunteer</a></li>
                    <li class="nav-item"> <a class="nav-link" href="donate.jsp">Donate</a></li>
                    <li class="nav-item"> <a class="nav-link" href="attendEvent.html">Attend Events</a></li>
                    <li class="nav-item"> <a class="nav-link" href="ourImpact.html">Our Impact</a></li>
                    <li class="nav-item"> <a class="nav-link" href="findFood.html">Find Food</a></li>
                   
                    <li class="nav-item active"> <a class="nav-link" href="contactUs.html">Contact Us</a></li>
        </ul>
        <a href="login.jsp"> <button  class="btn btn-outline-success my-2 my-sm-0" type="submit">Login</button></a>
	 <button  class="btn btn-outline-danger my-2 my-sm-0"> <a href="donate.jsp">Donate Now</a></button>
      </div>
    </nav>
    <header>
        <div class="container">
          <div class="row">
            <div class="col-12">
              <h1 class="text-center">What We Can Do <strong>With Your Help</strong></h1>
              <p class="text-center">RM10 feeds 4 student for a week for 1 meal each day. Your donation will provide hope to the students we serve.</p>
            </div>
          </div>
        </div>
      
    </header>
    <section>
      <div class="container">
        <div class="row">
          <div class="col-lg-12 mb-4 mt-2 text-center">
			  <!--list of package-->
			  <h2><em><strong>DONATE</strong></em></h2>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-6">&nbsp; </div>
          <div class="col-lg-6">&nbsp;</div>
        </div>
      </div>
      <div class="container ">
        <div class="row">
          <div class="col-lg-4 col-md-6 col-sm-12 text-center">
            <img class="rounded-circle" alt="140x140" style="width: 140px; height: 140px;" src="IMAGE/photo_2019-12-14_00-02-55.jpg" data-holder-rendered="true">
            <h3>PACKAGE A</h3>
            <% List<pakej> l1=DAO.getdisplay6();
            for(pakej a:l1)
            {
            %>
            <p class="text-center">Price: RM<%=a.getHargaPakej() %>/pack</p>
            
            <p class="text-center">Detail: Basic - <%=a.getButiranPakej() %></p>
            <p class="text-center">Location: <%=a.getLokasi() %></p>

            <%}%>
            <p></p>
          </div>
          <div class="col-lg-4 col-md-6 col-sm-12 text-center">
            <img class="rounded-circle" alt="140x140" style="width: 140px; height: 140px;" src="IMAGE/photo_2019-12-14_00-02-52.jpg" data-holder-rendered="true">
            <h3>PACKAGE B</h3>
            <% List<pakej> l2=DAO.getdisplay1();
            for(pakej a1:l2)
            {
            %>
            <p class="text-center">Price: RM<%=a1.getHargaPakej() %>/pack</p>
            <p class="text-center">Detail: Premium - <%=a1.getButiranPakej() %></p>
            <p class="text-center">Location: <%=a1.getLokasi() %></p>
<p></p>
<%}%>
          </div>
          <div class="col-lg-4 col-md-6 col-sm-12 text-center">
            <img class="rounded-circle" alt="140x140" style="width: 140px; height: 140px;" src="IMAGE/photo_2019-12-14_00-02-59.jpg" data-holder-rendered="true">
            <h3>PACKAGE C</h3>
             <% List<pakej> l3=DAO.getdisplay2();
            for(pakej a2:l3)
            {
            %>
            <p class="text-center">Price: RM<%=a2.getHargaPakej() %>/pack</p>
            <p class="text-center">Detail: <%=a2.getButiranPakej() %></p>
            <p class="text-center">Location: <%=a2.getLokasi() %> </p>
            <p class="text-center">&nbsp;</p>
            <p class="text-center">&nbsp;</p>
            <p class="text-center">&nbsp;</p>
            <p class="text-center">&nbsp;</p><%}%>
<p></p>
          </div>
          <div class="col-lg-4 col-md-6 col-sm-12 text-center">
            <img class="rounded-circle" alt="140x140" style="width: 140px; height: 140px;" src="IMAGE/photo_2019-12-14_00-28-28.jpg" data-holder-rendered="true">
            <h3>PACKAGE D</h3>
             <% List<pakej> l4=DAO.getdisplay3();
            for(pakej a4:l4)
            {
            %>
            <p class="text-center">Price: RM<%=a4.getHargaPakej() %>/pack</p>
            <p class="text-center">Detail: <%=a4.getButiranPakej() %></p>
            <p class="text-center">Location: <%=a4.getLokasi() %></p>
            <p class="text-center">&nbsp;</p><%}%>
<p></p>
          </div>
          <div class="col-lg-4 col-md-6 col-sm-12 text-center">
            <img class="rounded-circle" alt="140x140" style="width: 140px; height: 140px;" src="IMAGE/photo_2019-12-14_00-03-02.jpg" data-holder-rendered="true">
            <h3>PACKAGE E</h3>
            <% List<pakej> l5=DAO.getdisplay4();
            for(pakej a5:l5)
            {
            %>
            <p class="text-center">Price: RM<%=a5.getHargaPakej() %>/pack</p>
            <p class="text-center">Detail: <%=a5.getButiranPakej() %></p>
            <p class="text-center">Location: <%=a5.getLokasi() %>&nbsp;</p><%}%>
<p></p>
          </div>
          <div class="col-lg-4 col-md-6 col-sm-12 text-center">
            <img class="rounded-circle" alt="140x140" style="width: 140px; height: 140px;" src="IMAGE/photo_2019-12-14_00-03-05.jpg" data-holder-rendered="true">
            <h3>PACKAGE F</h3>
             <% List<pakej> l6=DAO.getdisplay5();
            for(pakej a6:l6)
            {
            %>
            <p class="text-center">Price: RM<%=a6.getHargaPakej() %>/pack</p>
            <p class="text-center">Detail: <%=a6.getButiranPakej() %></p>
            <p class="text-center">Location: <%=a6.getLokasi() %></p><%}%>
<p></p>
          </div>
        </div>
		  <!--calculation shopping chart-->
		  <div class="row">
          <div class="col-lg-6">&nbsp;</div>
          <div class="col-lg-6">&nbsp;</div>
		    <div class="container">
    <div class="row">
        <div class="col-sm-12 col-md-10 col-md-offset-1">
            <form action="process.jsp" method="POST" enctype="multipart/form-data">
            <table class="table table-hover">
                         </tr>
    
                <thead>
					
					<tr>
                        <td><h5>1. PURCHASE DETAIL</h5>
                       </td>
                        <td> � </td>
                        <td> � </td>
                        <td></td>
                        <td </td>
                    </tr>
                    <tr>
                        <th>Product</th>
                        <th>Quantity</th>
                        <th class="text-center">Price</th>
                        <th class="text-center">Total (RM)</th>
                        <th>�</th>
                    </tr>
                </thead>
                <tbody>
                    
                    <tr>
                        <td class="col-sm-8 col-md-6"><h4>Package A</h4>
                 
                 </td>
                        
                        <td>
                           
                       <input type="text" id="firstNumber" />
                          
                        </td>
                        <td class="col-sm-1 col-md-1 text-center">
                              
                            <%
                                List<pakej>list8=DAO.getdisplay6();
                                
for(pakej n:list8)
{
                                %>
                          <input type="text" id="num2" value=<%=n.getHargaPakej() %> readonly>
                 <%}%>
                
                        </td>
                        <td class="col-sm-1 col-md-1 text-center">RM<span id="result"></span></td>
                        <td class="col-sm-1 col-md-1">&nbsp;</td>
                    </tr>
                    
                  
                    
                    
                    
                    <tr>
                        <td class="col-md-6"><h4>Package B</h4>
                
                        </td>
                        <td class="col-md-1" style="text-align: center">
                        <div class="form-group">
                        <input type="text" id="num3">
                            </div>
                        </td>
                        <td class="col-md-1 text-center"><div class="form-group">
                               
                                <% 
                                    List<pakej> list2=DAO.getdisplay1();
                                    for(pakej obj2:list2)
                                    {
                                    %>
                           <input type="text" id="num4" value=<%=obj2.getHargaPakej() %> readonly>
                           <%}
                               %>
                            
                            </div></td></td>
                        <td class="col-md-1 text-center"><div class="form-group">RM<span id="result2"></span></div></td>
                        <td class="col-md-1">&nbsp;</td>
                    </tr>
		<tr>
                        <td class="col-md-6"><h4>Package C</h4>
              </div>
                        </div></td>
                        <td class="col-md-1" style="text-align: center">
                          <input type="text" id="num5">
                        </td>
                        
                        <% 
                        List<pakej>list3=DAO.getdisplay2();
                        for(pakej obj3:list3)
                        {
                        
                        
                        %>
                        <td class="col-md-1 text-center"> <input type="text" id="num6" value=<%=obj3.getHargaPakej() %> readonly>
                            
                            <%}%>
                        <td class="col-md-1 text-center"><div class="form-group">RM<span id="result3"></span></div></td>
                        <td class="col-md-1">&nbsp;</td>
                    </tr>
                    
                    
                    
                    
<tr>
                        <td class="col-md-6"><h4>Package D</h4>
                          </div>
                        </div></td>
                        <td class="col-md-1" style="text-align: center">
                        <input type="text" id="num7">
                        </td>
                        
                        <% 
                        List<pakej> list4=DAO.getdisplay3();
                        
                        for(pakej obj3:list4)
                        {
                        %>
                        <td class="col-md-1 text-center"><div class="form-group"><input type="text" id="num8" value=<%=obj3.getHargaPakej() %> readonly></td>
                                
                                
                                <%}%>
                        <td class="col-md-1 text-center"><div class="form-group">RM<span id="result4"></span></div></td>
                        <td class="col-md-1">&nbsp;</td>
              </tr>
              
              
              
              
              
<tr>
                        <td class="col-md-6"><h4>Package E</h4>
                          </div>
                        </div></td>
                        <td class="col-md-1" style="text-align: center">
                       <input type="text" id="num9">
                        </td>
                        
                        
                        <% 
                            List<pakej>list5=DAO.getdisplay4();
                            for(pakej obj4:list5)
                            {
                            
                            
                            
                            %>
                        <td class="col-md-1 text-center"><input type="text" id="num10" value=<%=obj4.getHargaPakej() %> readonly></td>
                        <%}%>
                        <td class="col-md-1 text-center">RM<span id="result5"></span></td>
                        <td class="col-md-1">&nbsp;</td>
              </tr>
<tr>
                        <td class="col-md-6"><h4>Package F</h4>
                          </div>
                        </div></td>
                        <td class="col-md-1" style="text-align: center">
                        <input type="text" id="num11">
                        </td>
                        
                        <%
                           List<pakej>list6=DAO.getdisplay5();
                           for(pakej obj5:list6)
                           {
                        
                        
                        %>
                        <td class="col-md-1 text-center"><input type="text" id="num12" value=<%=obj5.getHargaPakej() %> readonly></td>
                        
                        <%}%>
                        <td class="col-md-1 text-center">RM<span id="result6"></span></td>
                        <td class="col-md-1">&nbsp;</td>
              </tr>
                    <tr>
                        <td> � </td>
                        <td> � </td>
                       
                        <td><input type="button"  onClick="total()" Value="Calculate"/><h3>Total (RM) <span   id="total" ></span></h3><input  type="hidden" name="jumlah" readonly></td>
                        
                        <td class="text-right"><h3><strong></strong></h3></td>
                    </tr>
                    
					 
<tr><td></td>
                        <td> � </td>
                        <td> � </td>
                        <td></td>
                        <td </td></tr>
					<tr>
                        <td><h5>2. CUSTOMER DETAILS</h5></td>
                        <td> � </td>
                        <td> � </td>
                        <td></td>
                        <td </td>
                    </tr>
<tr>
                        <td><h6>Name:</h6></td>
                        <td><input type="text" name="name"> � </td>
                        
                    </tr>
<tr>
                        <td><h6>Email:</h6></td>
                        <td><input type="email" id="fname" name="email"> � </td>
                        
                    </tr>
<tr>
                        <td><h6>Phone number:</h6></td>
                        <td> <input type="text"  name="phone">� </td>
                        
                    </tr>
                    <tr>
<td><h6>Address:</h6></td>
                        <td> <input type="text"  name="address">� </td>
                        
                    </tr>

<tr>
                        <td>City</td>
                        <td> �<input type="text"  name="city"> </td>
                        
                    </tr>
                    <tr>
                        <td>State</td>
                        <td><select name="state">
                                   <option  selected>...</option>
                                    <option>KEDAH</option>
                                    <option>KELANTAN</option>
                                    <option>MELAKA</option>
                                    <option>NEGERI SEMBILAN</option>
                                    <option>PAHANG</option>
                                    <option>PERAK</option>
                                    <option>PERLIS</option>
                                    <option>PULAU PINANG</option>
                                    <option>SABAH</option>
                                    <option>SARAWAK</option>
                                    <option>TERENGGANU</option>
                                    <option>W.P(KUALA LUMPUR)</option>
                                    <option>W.P(LABUAN)</option>
                                    <option>W.P(PUTRAJAYA)</option></select></td>
                    </tr>

<tr>
                        <td><h5>3. INVOIS</h5>
                       </td>
                        <td> � </td>
                        <td> � </td>
                        <td></td>
                        <td </td>
                    </tr>
<tr>
                        <td><h6>Proof of payment:</h6>
                       </td>
                        <td> � </td>
                        <td> � </td>
                        <td></td>
                        <td class="text-left">
                          <h6>Select files: <input type="file" name="myFile" multiple></h6>
							
							
</td>
						 
						 <!--REFERENCE NUMBER NI PELANGGAN TU KNE ISI SENDIRI N BILE DAH TEKAN "PROCEED", DATA BELI PAKEJ APE, NO REFERENCE APE, AKN SAVE-->
                    </tr>
					<tr>
                        <td> � </td>
                        <td> � </td>
                        <td> � </td>
						 <td>
							 
							
                        <input type="submit" name="Submit"  value="Confirm" class="btn btn-success">
                            
                       </td>
						<!--IF CHECKOUT LINK HOMEPAGE-->
                        <td>
                        <button type="button" class="btn btn-danger">
                            Cancel <span class="glyphicon glyphicon-cancel"></span>
                        </button></td>
                </tbody>
            </table>
            
            </form>
        </div>
    </div>
    <div class="row">
      <div class="col-lg-6">&nbsp;</div>
      <div class="col-lg-6">&nbsp;</div>
    </div>
          </div>
      </div>
	  
  <script>
      
      function total(){
         num1= document.getElementById("firstNumber").value;
        num2 = document.getElementById("num2").value;
        num3=document.getElementById("num3").value;
        num4=document.getElementById("num4").value;
         num5=document.getElementById("num5").value;
        num6=document.getElementById("num6").value;
         num7=document.getElementById("num7").value;
        num8=document.getElementById("num8").value;
        num9=document.getElementById("num9").value;
        num10=document.getElementById("num10").value;
        num11=document.getElementById("num11").value;
        num12=document.getElementById("num12").value;
      document.getElementById("result").innerHTML = num1 * num2;
        document.getElementById("result2").innerHTML = num3 * num4;
         document.getElementById("result3").innerHTML = num5 * num6;
         document.getElementById("result4").innerHTML = num7 * num8;
         document.getElementById("result5").innerHTML = num9 * num10;
             document.getElementById("result6").innerHTML = num11 * num12;
             var total1=(num1*num2)+(num3*num4)+(num5*num6)+(num7*num8)+(num9*num10)+(num11*num12);
             var total2=(num1*num2)+(num3*num4)+(num5*num6)+(num7*num8)+(num9*num10)+(num11*num12);
             
             document.getElementById("total").innerHTML =total1;
             
             $(document).ready(function(e)
             {
                 $("input").change(function(){
                     
                    
                     
                 })
                 $("input[name=jumlah]").val(total1);
             });
    }
</script>
  <footer class="text-center">
    <div class="container">
        <div class="row">
          <div class="col-12">
            <p>Copyright � spaokumt. All rights reserved.</p>
          </div>
        </div>
      </div>
    </footer>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
    <script src="js/jquery-3.2.1.min.js"></script> 
    <!-- Include all compiled plugins (below), or include individual files as needed --> 
    <script src="js/popper.min.js"></script> 
    <script src="js/bootstrap-4.0.0.js"></script>

  </body>
</html