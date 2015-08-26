class Application < ActiveRecord::Base
  has_many :business
  belongs_to :user
  belongs_to :job
  belongs_to :cv
end
