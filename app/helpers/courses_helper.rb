module CoursesHelper
	def botonera_course
		html="
			<div class='right'>
				<input class='btn btn-info' name='commit' type='submit' value='Guardar'>
				<a href='/' class = 'btn btn-warning'>Regresar</a>
			</div>
			 "
		html.html_safe
	end
	def botonera_index_courses
	 	html="
	 			<div class='right'>
		 			<a href='/courses/new' class = 'btn btn-default'>Agregar +</a>
					<a href='/'       class = 'btn btn-success'>Regresar</a>
				</div>
			 "
		html.html_safe
	 end
end
