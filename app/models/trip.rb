class Trip < ApplicationRecord
  
  belongs_to :captain
  belongs_to :observer

  has_many :samples, inverse_of: :trip, dependent: :destroy
  has_many :drops, through: :samples

  has_many :catches, through: :samples

  accepts_nested_attributes_for :samples, allow_destroy: true


  validates :samples, length: { minimum: 1 }

end
