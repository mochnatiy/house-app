class Street < ActiveRecord::Base
  belongs_to :district
  belongs_to :city

  has_many :houses

  validates :city, presence: true
  validates :district, presence: true

  before_create lambda { |street| street.full_path = [street.city.title, street.district.title, street.title].join(', ') }
end
