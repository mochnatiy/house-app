# encoding: utf-8

class House < ActiveRecord::Base
  belongs_to :street
  
  validates :street, presence: true

  def address
    self.street.full_path + ' д. ' + self.number
  end
end
