class Tag < ActiveRecord::Base
  belongs_to :idioma
   has_many :jobs
   has_many :my_tags
end
