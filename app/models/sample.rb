class Sample < ApplicationRecord

  belongs_to :trip, inverse_of: :samples

  has_many :drops, inverse_of: :sample, dependent: :destroy
  accepts_nested_attributes_for :drops, reject_if: proc { |attributes| attributes[:drop_number].blank? }  , allow_destroy: true


  has_many :catches, inverse_of: :sample, dependent: :destroy
  accepts_nested_attributes_for :catches, reject_if: proc { |attributes| attributes[:animal_id].blank? }, allow_destroy: true
  has_many :animals, through: :catches, inverse_of: :sample
end
