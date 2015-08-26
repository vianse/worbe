class Dg < ActiveRecord::Base
	has_many :educations
	mount_uploader :photo, ImageUploader
end
