class MyTag < ActiveRecord::Base
  belongs_to :cv
  belongs_to :idioma
  belongs_to :user
  belongs_to :tag
  #has_many :jobs
end
