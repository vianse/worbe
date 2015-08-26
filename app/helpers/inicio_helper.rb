module InicioHelper
	def estilo_form_inicio
		estilo =" <style type='text/css'>
					@import url(http://fonts.googleapis.com/css?family=Roboto:400,700);

					body {
					    background-color: rgb(229, 229, 229);
					    padding-top: 0px!important;
					    padding-bottom: 30px;
					}

					.panel-google-plus {
					    position: relative;
					    margin-left: 10px auto;
					    border-radius: 0px;
					    width: 700px;
					    border: 1px solid rgb(216, 216, 216);
					    font-family: 'Roboto', sans-serif;
					}
				
					.panel-google-plus > .panel-heading,
					.panel-google-plus > .panel-footer {
					    background-color: rgb(255, 255, 255);
					    border-width: 0px; 
					}
					.panel-google-plus > .panel-heading {
					    margin-top: 20px;    
					    padding-bottom: 5px; 
					}
					.panel-google-plus > .panel-heading > img { 
					    margin-right: 15px;
					}
					.panel-google-plus > .panel-heading > h3 {
					    margin: 0px;
					    font-size: 14px;
					    font-weight: 700;
					}
					.panel-google-plus > .panel-heading > h5 {
					    color: rgb(153, 153, 153);
					    font-size: 12px;
					    font-weight: 400;
					}
					.panel-google-plus > .panel-body {
					    padding-top: 5px;
					    font-size: 13px;
					}
					.panel-google-plus > .panel-body > .panel-google-plus-image {
					    display: block;
					    text-align: center;
					    background-color: rgb(245, 245, 245);

					}
					.panel-google-plus > .panel-body > .panel-google-plus-image > img {
					    max-width: 100%;
					}

					.panel-google-plus > .panel-footer {
					    font-size: 14px;
					    font-weight: 700;
					    min-height: 54px;
					}
					.panel-google-plus > .panel-footer > .btn {
					    float: left;
					    margin-right: 8px;
					}
					.panel-google-plus > .panel-footer > .input-placeholder {
					    display: block;
					    margin-left: 98px;
					    color: rgb(153, 153, 153);
					    font-size: 12px;
					    font-weight: 400;
					    padding: 8px 6px 7px;
					    border: 1px solid rgb(217, 217, 217);
					    border-radius: 2px;
					    box-shadow: rgba(0, 0, 0, 0.0470588) 0px 1px 0px 0px;
					}
					.panel-google-plus.panel-google-plus-show-comment > .panel-footer > .input-placeholder {
					    display: none;   
					}
					.panel-google-plus > .panel-google-plus-comment {
					    display: none;
					    padding: 10px 20px 15px;
					    border-top: 1px solid rgb(229, 229, 229);
					    background-color: rgb(245, 245, 245);
					}
					.panel-google-plus.panel-google-plus-show-comment > .panel-google-plus-comment {
					    display: block;
					}
					/*.panel-google-plus > .panel-google-plus-comment > img {
					    float: left;   
					}*/
					.panel-google-plus > .panel-google-plus-comment > .panel-google-plus-textarea {
					    float: right;
					    width: calc(100% - 56px);
					}
					.panel-google-plus > .panel-google-plus-comment > .panel-google-plus-textarea > textarea {
					    display: block;
					    /*margin-left: 60px;
					    width: calc(100% - 56px);*/
					    width: 100%;
					    background-color: rgb(255, 255, 255);
					    border: 1px solid rgb(217, 217, 217);
					    box-shadow: rgba(0, 0, 0, 0.0470588) 0px 1px 0px 0px;
					    resize: vertical;
					}
					.panel-google-plus > .panel-google-plus-comment > .panel-google-plus-textarea > .btn {
					    margin-top: 10px;
					    margin-right: 8px;
					    width: 100%;
					}
					@media (min-width: 992px) {
					    .panel-google-plus > .panel-google-plus-comment > .panel-google-plus-textarea > .btn {
					        width: auto;
					    }    
					}

					.panel-google-plus .btn {
					    border-radius: 3px;   
					}
					.panel-google-plus .btn-default {
					    border: 1px solid rgb(217, 217, 217);

					}
					.panel-google-plus .btn-default:hover, 
					.panel-google-plus .btn-default:focus, 
					.panel-google-plus .btn-default:active {
					    background-color: rgb(255, 255, 255);
					    border-color: rgb(0, 0, 0);    
					}

					.primary{
					  position: fixed!important;
					  z-index: 1000;
					  height: 50px!important;
					  background-color:hsl(200, 3%, 35%);
					}

					.panel-google-plus{
					  top:60px;
					  left: 30%;
					  border-radius:5px;
					}


					.subnav ul {
					  position: fixed!important;
					  width: 100%;
					  z-index: 1000;
					  list-style: none;
					  background-color: #444;
					  text-align: left;
					  padding: 0;
					  margin: 0;
					}
					.subnav li {
					  font-family: 'Oswald', sans-serif;
					  line-height: 40px;
					  height: 40px;
					  border-bottom: 1px solid #888;
					}
					 
					.subnav a {
					  text-decoration: none;
					  color: #fff;
					  display: block;
					  transition: .3s background-color;
					  font-size: 14px;
					  text-align: center;

					}
					 
					.subnav a:hover {
					  background-color: #005f5f;
					}
					 
					.subnav a.active {
					  background-color: #fff;
					  color: #444;
					  cursor: default;
					}

					form label {
					  left:0px!important;
					  width: 100%!important;
					  text-align: left!important;
					  padding-left: 100px!important;
					}

					form input[type='text'], form input[type='email'], form input[type='password'] {
					  width: 600px;
					  height: 34px;
					  line-height: 24px;
					  font-size: 16px;
					  padding: 3px 8px;
					  margin-left: 100px;
					}

					select{

					  height: 34px;
					  font-size: 16px;
					  padding: 3px 8px;
					  margin-left: 100px;
					}

					textarea{

					  height: 34px;
					  font-size: 16px;
					  padding: 3px 8px;
					  margin-left: 100px;
					}
					form input[type= 'checkbox']{

					  height: 34px;
					  font-size: 16px;
					  padding: 3px 8px;
					  margin-left: 100px;
					}
					form input[type= 'number']{

					  height: 34px;
					  font-size: 16px;
					  padding: 3px 8px;
					  margin-left: 100px;
					}
					form input[type= 'file']{
					  height: 34px;
					  font-size: 16px;
					  padding: 3px 8px;
					  margin-left: 100px;

					}

					.form-control{
					  width: 600px!important;
					}
					 
					@media screen and (min-width: 600px) {
					  .subnav li {
					    width: 120px;
					    border-bottom: none;
					    height: 50px;
					    line-height: 50px;
					    font-size: 1.4em;
					  }
					 
					  /* Option 1 - Display Inline */
					  .subnav li {
					    display: inline-block;
					    margin-right: -4px;
					  }
					 }




					@import url(http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700);
					/* written by riliwan balogun http://www.facebook.com/riliwan.rabo*/
					.board{
					    width: 75%;
					margin: 60px auto;
					height: 500px;
					background: #fff;
					/*box-shadow: 10px 10px #ccc,-10px 20px #ddd;*/
					}
					.board .nav-tabs {
					    /*position: relative;*/
					    /* border-bottom: 0; */
					    /* width: 80%; */
					    margin: 40px auto;
					    margin-bottom: 0;
					    box-sizing: border-box;
					    top: 100px;

					}

					.board > div.board-inner{
					   /* background: #fafafa url(http://subtlepatterns.com/patterns/geometry2.png);*/
					    background-size: 30%;

					}

					p.narrow{
					    width: 60%;
					    margin: 10px auto;
					}

					.liner{
					    height: 2px;
					    background: #ddd;
					    position: absolute;
					    width: 80%;
					    margin: 0 auto;
					    left: 0;
					    right: 0;
					    top: 50%;
					    z-index: 1;
					}

					.nav-tabs > li.active > a, .nav-tabs > li.active > a:hover, .nav-tabs > li.active > a:focus {
					    color: #555555;
					    cursor: default;
					    /* background-color: #ffffff; */
					    border: 0;
					    border-bottom-color: transparent;
					}

					span.round-tabs{
					    width: 70px;
					    height: 70px;
					    line-height: 70px;
					    display: inline-block;
					    border-radius: 100px;
					    background: white;
					    z-index: 2;
					    position: absolute;
					    left: 0;
					    text-align: center;
					    font-size: 25px;
					}

					span.round-tabs.one{
					    color: rgb(34, 194, 34);border: 2px solid rgb(34, 194, 34);
					}

					li.active span.round-tabs.one{
					    background: #fff !important;
					    border: 2px solid #ddd;
					    color: rgb(34, 194, 34);
					}

					span.round-tabs.two{
					    color: #febe29;border: 2px solid #febe29;
					}

					li.active span.round-tabs.two{
					    background: #fff !important;
					    border: 2px solid #ddd;
					    color: #febe29;
					}

					span.round-tabs.three{
					    color: #3e5e9a;border: 2px solid #3e5e9a;
					}

					li.active span.round-tabs.three{
					    background: #fff !important;
					    border: 2px solid #ddd;
					    color: #3e5e9a;
					}

					span.round-tabs.four{
					    color: #f1685e;border: 2px solid #f1685e;
					}

					li.active span.round-tabs.four{
					    background: #fff !important;
					    border: 2px solid #ddd;
					    color: #f1685e;
					}

					span.round-tabs.five{
					    color: #999;border: 2px solid #999;
					}

					li.active span.round-tabs.five{
					    background: #fff !important;
					    border: 2px solid #ddd;
					    color: #999;
					}

					.nav-tabs > li.active > a span.round-tabs{
					    background: #fafafa;
					}
					.nav-tabs > li {
					    width: 20%;
					}
					/*li.active:before {
					    content: " ";
					    position: absolute;
					    left: 45%;
					    opacity:0;
					    margin: 0 auto;
					    bottom: -2px;
					    border: 10px solid transparent;
					    border-bottom-color: #fff;
					    z-index: 1;
					    transition:0.2s ease-in-out;
					}*/
					li:after {
					    content: " ";
					    position: absolute;
					    left: 45%;
					   opacity:0;
					    margin: 0 auto;
					    bottom: 0px;
					    border: 5px solid transparent;
					    border-bottom-color: #ddd;
					    transition:0.1s ease-in-out;
					    
					}
					li.active:after {
					    content: " ";
					    position: absolute;
					    left: 45%;
					   opacity:1;
					    margin: 0 auto;
					    bottom: 0px;
					    border: 10px solid transparent;
					    border-bottom-color: #ddd;
					    
					}
					.nav-tabs > li a{
					   width: 70px;
					   height: 70px;
					   margin: 20px auto;
					   border-radius: 100%;
					   padding: 0;
					}

					.nav-tabs > li a:hover{
					    background: transparent;
					}

					.tab-content{
					}
					.tab-pane{
					   position: relative;
					   padding-top: 5px;
					}
					.tab-content .head{
					    font-family: 'Roboto Condensed', sans-serif;
					    font-size: 25px;
					    text-transform: uppercase;
					    padding-bottom: 10px;
					}
					.btn-outline-rounded{
					    padding: 10px 40px;
					    margin: 20px 0;
					    border: 2px solid transparent;
					    border-radius: 25px;
					}

					.btn.green{
					    background-color:#5cb85c;
					    /*border: 2px solid #5cb85c;*/
					    color: #ffffff;
					}

					@media( max-width : 585px ){
					    
					.board {
					width: 90%;
					height:auto !important;
					}
					    span.round-tabs {
					        font-size:16px;
					width: 50px;
					height: 50px;
					line-height: 50px;
					    }
					    .tab-content .head{
					        font-size:20px;
					        }
					    .nav-tabs > li a {
					width: 50px;
					height: 50px;
					line-height:50px;
					}

					li.active:after {
					content: " ";
					position: absolute;
					left: 35%;
					}

					.btn-outline-rounded {
					    padding:12px 20px;
					    }
					}

					form {
					  padding-top: 0px!important;
					}
					ul#myTab{
					  padding-left: 30px;
					  right: 25%;

					}
					.nav.nav-tabs{
					    width: 50%;
					  padding-left: 60px
					}

					.board .nav-tabs{
					  position: fixed!important;
					  z-index: 1000;
					  background-color: white;

					}

					.tab-content>.active{
					  top:90px!important;
					}
					</style>"
				estilo.html_safe
		
	end
	def fondo
		html = "<style>
			body{
				background-color: white;
			}
			.leyenda{
				margin-top:18%;
				text-transform: uppercase;
				font-size: 60px;
    			font-weight: 700;
    			text-align: center;
    			color: hsl(0, 100%, 100%);
    			margin-bottom: 6.25px;

			}
			h4{
				font-weight: bold;
			}
			.text-contrast{
				color: hsl(0, 100%, 100%);
			}
			.space-4 {
				margin-bottom: 25px;
				text-align: center;
			} 
			.centerButtons {
    			margin-left: 45%;
			}
			.tamaño_boton{
				width:200px;
				height:130px;
				color:white;
				text-transform: uppercase;
				text-align: center;
    			color: hsl(0, 100%, 100%)!important;
    			margin-bottom:4px;
    			padding-top:3%;
			}
			.boton{			
				background-color:#47BBD7;

			}
			.boton1{			
				background-color:#D2ACDF;
			}
			.boton2{
				background-color:#06A77D;
			}
			.boton3{
				background-color:#F1A208;
			}
			.boton4{
				background-color:#A54191;
			}
			.boton5{
				background-color:#FF686B;
			}
			.boton6{
				background-color:#9BC53D;
			}
			.boton7{

				background-color:#114B5F;
			}

			.botons:hover{
				opacity:.85;
			}

			.botonera{
				margin-left:4%;
				width:700px;

			}
			.panel ,.panel-heading{
				top:30px;
				background-color:transparent!important;
			}
			.panel-google-plus{
				border:none;
			}
			.text{
				margin-top:10px!important;
			}
			.title{
				margin-left:150px!important;
			}
			.url{
				font-size:14px;
			}
			
			</style>"
	html.html_safe
	end

	
end
