class Trip < ApplicationRecord

  belongs_to :captain
  belongs_to :observer

  has_many :samples, inverse_of: :trip, dependent: :destroy
  accepts_nested_attributes_for :samples, reject_if: proc {  |attributes| attributes[:grid_number].blank?}, allow_destroy: true


end
