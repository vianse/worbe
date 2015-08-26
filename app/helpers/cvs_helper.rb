module CvsHelper
	def botonera_index_cvs
	 	html="
	 			<div class='right'>
		 			<a href='/cvs/new' class = 'btn btn-default'>Agregar +</a>
					<a href='/'        class = 'btn btn-success'>Regresar</a>
				</div>
			 "
		html.html_safe
	 end
	 def botonera_index_cvs_existe
	 	html="
	 			<div class='right'>
					<a href='/'        class = 'btn btn-success'>Regresar</a>
				</div>
			 "
		html.html_safe
	 end
end
