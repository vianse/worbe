class MyTag < ActiveRecord::Base
  belongs_to :cv
  belongs_to :idioma
  belongs_to :user
  belongs_to :tag
  #has_many :jobs
  def self.search(search)
  if search
    where('name LIKE ?', "%#{search}%")
  else
  
  end
end
end
