module LanguagesHelper
		def botonera_la
		html="
			<div class='right'>
				<input class='btn btn-info' name='commit' type='submit' value='Guardar'>
				<a href='/languages' class = 'btn btn-warning'>Regresar</a>
			</div>
			 "
		html.html_safe
	end

	def botonera_index_la
	 	html="
	 			<div class='right'>
		 			<a href='/languages/new' class = 'btn btn-default'>Agregar +</a>
					<a href='/'      class = 'btn btn-success'>Regresar</a>
				</div>
			 "
		html.html_safe
	 end
	def botonera_edit_la
		html="
			<div class='right'>
				<a href='/dashboard'      class = 'btn btn-success'>Regresar</a>
				<input class='btn btn-info' name='commit' type='submit' value='Guardar'>
				<a href='/languages' class = 'btn btn-warning'>Regresar</a>
			</div>
			 "
		html.html_safe
	end
	def estilo_botonera_la
		estilo="<style>
				.right{
					left:70px;
					padding-bottom:30px;
				}
				</style>
			 "
		estilo.html_safe
	end
end
