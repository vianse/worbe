class Business < ActiveRecord::Base
  belongs_to :user
  belongs_to :country
  belongs_to :state
  belongs_to :city
  belongs_to :empresa
  has_many :applications

  mount_uploader :logo, ImageUploader
  
end
