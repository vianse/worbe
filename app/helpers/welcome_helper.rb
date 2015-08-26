module WelcomeHelper
    def bar_nav
    	nav_html = "<div class='subnav'>"\
    				"<ul class='subnav-list'>"\
          			"<li>"\
          			"<a href='/hottags' aria-selected='true' class='subnav-item'>Buscar trabajo</a>"\
          			"</li>"\
          			"<li>"\
          			"<a href='/dashboard' aria-selected='true' class='subnav-item'>Cloud CV </a>"\
          			"</li>"\
                "<li>"\
                "<a href='/dashboard' aria-selected='true' class='subnav-item'>Account $10.00</a>"\
                "</li>"\
          			"</ul>"\
          			"</div>" 
      nav_html.html_safe  
    end
end
