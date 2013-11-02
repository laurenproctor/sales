class Product < ActiveRecord::Base
  has_many :sales

  validates_numericality_of :price,
  	greater_than: 49,
  	message: "Must be at least 50 cents."

  has_attached_file :file

  belongs_to :user
end
