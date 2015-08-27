class ReportPdf < Prawn::Document
  require "open-uri"

  def initialize(dgs,products,photo, age, name, tags, birthday, address, phone1,phone2,email,educations,experiences,courses,languages,certificates, server)
    super()
    @dgs = dgs
    @titlecv = products
    @photo = photo
    @age = age
    @name = name
    @tags = tags
    @birthday = birthday
    @address = address
    @phone1 =phone1
    @phone2 = phone2
    @email = email
    @educations =educations
    @experiences =experiences
    @courses=courses
    @languages = languages
    @certificates= certificates
    @server = server
    header
    text_content

  end
 
  def header
    #This inserts an image in the pdf file and sets the size of the image
    #image  "#{Rails.root}/app/assets/images/img.png", width: 530, height: 150
    #image open("http://vianse.mx/images/logos/logo-vianse-v2.png")
   #
   text  "Power by worbe", size: 8, :align => :center
  end
 
  def text_content
    # The cursor for inserting content starts on the top left of the page. Here we move it down a little to create more space between the text and the image inserted above
    y_position = cursor - 95
    text  "#{@titlecv}", size: 15, style: :bold, :align => :center

    move_down 5
  

    move_down 25
    text  "Datos Generales", size: 13, style: :bold
    move_down 20
    
    bounding_box([0, y_position], :width => 270, :height => 100) do
      @dgs.each do |e|
      text  "#{e.name} ", size: 10, style: :bold
      move_down 3
      text  "Fecha de Nacimiento: #{e.datebirthday} ", size: 10
      text  "Edad: #{e.age} ", size: 10
      text  "Dirección: #{e.address} ", size: 10
      text  "Telefono: #{e.phone1} Movil: #{e.phone2}", size: 10
      text  "Email: #{e.email}", size: 10
     end
    end
    
    bounding_box([380, 650], :width => 100, :height => 100) do
      #image "#{@photo}", width: 90, height: 90
      #image open("http://res.cloudinary.com/vianse/image/upload/c_scale,h_90,w_80/v1438193767/sample.jpg")
      image  "#{Rails.root}/public/#{@photo.photo}", width: 90, height: 90

    end
    move_down 10
    move_down 10
    text  "Formación academica", size: 13, style: :bold
    move_down 13
   
    @educations.each do |a|
        text  "#{a.level}: #{a.school} (#{a.yearInitial} - #{a.yearFinal}) ", size: 11, style: :bold
        text  "Promedio #{a.average}", size: 10
        move_down 3
      end

    move_down 10
    text  "Experiencia laboral", size: 13, style: :bold

       move_down 10
     @experiences.each do |b|
        move_down 3
        text  "Empresa:  <b>#{b.business}</b> - (<b>#{b.datei} - #{b.datef}</b>)" ,:inline_format => true, size: 12
        
        move_down 5
        text  "Actividades desempeñadas:", size: 11, style: :bold
        move_down 10
        text "#{b.description}", size: 10, :align => :justify
        move_down 10

    end
    
    move_down 10
    if @courses.blank?
       
    else
       text  "Cursos", size: 13, style: :bold
        @courses.each do |c|
          move_down 3
          text  "<b>#{c.name}</b>",:inline_format => true, size: 10
          text  "#{c.description} " ,:inline_format => true, size: 11
          move_down 5
        end
    end
    move_down 10
    if @languages.blank?
       
    else
      text  "Idiomas", size: 13, style: :bold
      @languages.each do |d|
        move_down 3
        text  "<b>#{d.name}</b>",:inline_format => true, size: 10
        text  "Lectura: #{d.read}%", size: 11
        text  "Escritura: #{d.write}%", size: 11
        text  "Hablado: #{d.spoken}%", size: 11
        move_down 5
      end
    end
    move_down 10
    if @certificates.blank?
      
    else  
     text  "Certificaciones", size: 13, style: :bold
      @certificates.each do |f|
        move_down 3
        text  "<b>#{f.name}</b>",:inline_format => true, size: 10
        move_down 5
      end   
    end
    move_down 5
    text  "Tags de interes", size: 13, style: :bold
    @tags.each do |q|
    text  "#{q.name}", size: 10, :align => :justify
    end
  
  end

end