module CertificatesHelper

	def botonera_ce
		html="
			<div class='right'>
				<input class='btn btn-info' name='commit' type='submit' value='Guardar'>
				<a href='/certificates' class = 'btn btn-warning'>Regresar</a>
			</div>
			 "
		html.html_safe
	end
	def botonera_index_ce
	 	html="
	 			<div class='right'>
		 			<a href='/certificates/new' class = 'btn btn-default'>Agregar +</a>
					<a href='/'        class = 'btn btn-success'>Regresar</a>
				</div>
			 "
		html.html_safe
	 end
end
