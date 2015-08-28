module ActionsHelper
	def estilo_cv
		html= "<style type='text/css'>
					@import url(http://fonts.googleapis.com/css?family=Roboto:400,700);

					body {
					    background-color: rgb(229, 229, 229);
					    padding-top: 0px;
					    padding-bottom: 30px;
					}

					.panel-google-plus {
					    position: relative;
					    border-radius: 0px;
					    width: 900px;
					    border: 1px solid rgb(216, 216, 216);
					    font-family: 'Roboto', sans-serif;
					}
					.panel-google-plus > .dropdown {
					    position: absolute;
					    top: 5px;
					    right: 15px;
					}
					.panel-google-plus > .dropdown > span > span {
					    font-size: 10px;   
					}
					.panel-google-plus > .dropdown > .dropdown-menu {
					    left: initial;
					    right: 0px;
					    border-radius: 2px;
					}
					.panel-google-plus > .panel-google-plus-tags {
					    position: absolute;
					    top: 35px;
					    right: -3px;
					}
					.panel-google-plus > .panel-google-plus-tags > ul {
					    list-style: none;
					    padding: 0px;
					    margin: 0px;
					}
					.panel-google-plus > .panel-google-plus-tags > ul:hover {
					    box-shadow: 0px 0px 3px rgb(0, 0, 0);   
					    box-shadow: 0px 0px 3px rgba(0, 0, 0, 0.25);   
					}
					.panel-google-plus > .panel-google-plus-tags > ul > li {
					    display: block;
					    right: 0px;
					    width: 0px;
					    padding: 5px 0px 5px 0px;
					    background-color: rgb(66, 127, 237);
					    color: white;
					    font-size: 12px;
					    overflow: hidden;
					}
					.panel-google-plus > .panel-google-plus-tags > ul > li::after {
					    content:"";
					    position: absolute;
					    top: 0px;
					    right: 0px;
					    height: 100%;
					    border-right: 3px solid rgb(66, 127, 237);
					}
					.panel-google-plus > .panel-google-plus-tags > ul:hover > li,
					.panel-google-plus > .panel-google-plus-tags > ul > li:first-child {
					    padding: 5px 15px 5px 10px;
					    width: auto;
					    cursor: pointer;
					    margin-left: auto;
					}
					.panel-google-plus > .panel-google-plus-tags > ul:hover > li {
					    background-color: rgb(255, 255, 255);   
					}
					.panel-google-plus > .panel-google-plus-tags > ul > li:hover {
					    background-color: rgb(66, 127, 237);
					    color: rgb(255, 255, 255);
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
					    border: 1px solid rgb(217, 217, 217);
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
						  box-shadow: rgba(0, 0, 0, 0.0470588) 0px 1px 0px 0px;
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
					.panel-google-plus{top:60px;}
					.subnav ul {
						  position: fixed!important;
						  width: 100%;
						  z-index: 1000;
						  list-style: none;
						  background-color: hsl(0, 0%, 96%);
						  text-align: left;
						  padding: 0;
						  margin: 0;
					}
					.subnav li {
						  font-family: 'Gotham SSm A', 'Gotham SSm B', sans-serif;
						  font-size:1.15em;
						  line-height: 1.5;
						  cursor: default;
						  height: 40px;
						  white-space: nowrap;
					 
					}
					.subnav a {
						  text-decoration: none;
						  color: black;
						  display: block;
						  transition: .3s background-color;
						  font-size:.75em;
						  text-align: center;
					}
					.subnav a:hover {background-color: white;}
					.subnav a.active {
						  background-color: #fff;
						  color: #444;
						  cursor: default;
					}
					@media screen and (min-width: 1200px){
					.col-lg-offset-2{
						  margin-left: 0px!important;
					}	
					}
					#page-content-wrapper{
						padding-top: 0px!important;
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
					.tags{
						  background-color: #1e4553;
						  color: white;
						  width: auto;
						  border-radius: 10px;
						  display: inline-block;
						  text-align: center;
						  padding-left: 10px;
						  padding-top: 2px;
						  padding-bottom: 2px;
					}
					#tags{
						  position: fixed;
						  z-index: 1000;
						  top: 142px;
					}
					#panel{top:70px;}
					.tags:hover{opacity: 0.75;}
					.count{
						  background-color: #40b8e3;
						  color: white;
						  width: auto;
						  border-radius: 10px;
						  display: inline-block;
						  text-align: center;
						  padding-left: 10px;
						  padding-right: 10px;
					}
					#header{border-bottom: none!important;}
					.multilinea{
					      word-wrap: break-word;
					      white-space: pre-wrap;
					}
					.centrar{
						  text-align: center;
						  margin-bottom: 0px;
						  margin-top: 5px;
					}
					.title{padding-left: 50px;}
					.margen{padding-left: 50px;text-align:justify;margin-right:70px;}
					.margendgs{
						  padding-left: 50px;
						  width: 50%;
					}
					.imagen{margin-left: 210px;}
					#contenedor{  /*padre*/
						  overflow: hidden;
						  width: 100%; 
					}
					#contenedor .margendgs, #contenedor .imagen{  /*hijos*/float: left;}
					.img{
						  width: 130px;
						  border-radius: 150px;
							-webkit-border-radius: 150px;
							-moz-border-radius: 150px;
					}
					.img:hover{
						opacity:.85;
					}
					.nombre{
						  margin-bottom: 5px;
						  font-size: 15px;
					}
					.curso_name{
						margin-right:150px;
						text-align:justify;
					}
					.btn_publicar{
						background-color:#FF686B!important;
						color:white!important;
					}
					.row{
						margin-left: 0px!important;
					}
					.col-sm-offset-1{
						margin-left:0px!important;
					}
					.tag{
						padding-left: 50px;
					}
					/* CSS PARA CV */
					.centrar{
						background-color:#F9F9F9;
						border-style: dashed;
						border-color:#E2E2E2;
						color:#CCCCCC;
						padding: 5px;
					}
					.centrar:hover{
						border-style: dashed;
						border-color:#FFC4BF;
						color:black;
						padding: 5px;
					}
					
					</style>"
		html.html_safe
	end
	def educations_margen_botton
		html = "<style>"\
				".margen{
					margin-bottom: 10px;
				}
				.tamaño_boton{
				  position:fixed;
				  margin-top:10px;
				  color:white!important;
				  float:left;
				}
				.boton{			
					background-color:#47BBD7;

				}
				#panel {
					top: 10px!important;
				}


			   </style>"
		html.html_safe
		
	end
end
