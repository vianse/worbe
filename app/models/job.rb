class Job < ActiveRecord::Base
  belongs_to :business
  has_many :users
  belongs_to :empresa
  belongs_to :tag
  belongs_to :area
  belongs_to :country
  belongs_to :state
  belongs_to :city
  has_many :applications
  has_many :tags
  has_many :my_tags, through: :tags

  before_save :default_values
  def default_values

      if self.id.nil?
        self.status = "Borrador"
        self.countclicks = 0
      else
      end
   
  end
end
