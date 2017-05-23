class Trip < ApplicationRecord
  
  belongs_to :captain
  belongs_to :observer

  has_many :samples, inverse_of: :trip, dependent: :destroy
  has_many :drops, through: :samples

  accepts_nested_attributes_for :samples, reject_if: proc { |attributes| attributes[:wind_speed].blank? }, allow_destroy: true

end
