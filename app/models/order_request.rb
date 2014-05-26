class OrderRequest < ActiveRecord::Base
  belongs_to :house

  validates :client_name, presence: true
  validates :phone_number, presence: true
  validates :flat_number, presence: true
end
