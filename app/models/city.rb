class City < ActiveRecord::Base
  has_many :districts
  has_many :streets, through: :district

  validates :title, presence: true, uniqueness: true
end
