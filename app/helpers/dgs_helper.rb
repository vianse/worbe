module DgsHelper
	def botonera_index_dgs
	 	html="
	 			<div class='right'>
		 			<a href='/dgs/new' class = 'btn btn-default'>Agregar +</a>
					<a href='/'        class = 'btn btn-success'>Regresar</a>
				</div>
			 "
		html.html_safe
	 end
	 def botonera_index_dgs_existe
	 	html="
	 			<div class='right'>
					<a href='/'        class = 'btn btn-success'>Regresar</a>
				</div>
			 "
		html.html_safe
	 end
end
