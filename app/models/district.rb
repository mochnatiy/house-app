class District < ActiveRecord::Base
  has_many :streets
  belongs_to :city

  validates :city, presence: true
  
end
