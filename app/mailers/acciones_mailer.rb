class AccionesMailer < ApplicationMailer
	def accion_mailer(url,name,to)
		@url = url
		@name = name
		@To = to
		mail(to: to, subject: "Curriculum Compartido")
	end
end
