class Objetivo < ActiveRecord::Base
  belongs_to :cv
  belongs_to :idioma
  belongs_to :user
end
