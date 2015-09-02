class Cv < ActiveRecord::Base
  belongs_to :user
  belongs_to :idioma
  belongs_to :dg
end
