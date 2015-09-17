class Action < ActiveRecord::Base
	has_many :educations
	has_many :courses
	before_save :default_values
  	mount_uploader :photo, ImageUploader

  
end