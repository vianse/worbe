class Action < ActiveRecord::Base
	has_many :educations
	has_many :courses
end