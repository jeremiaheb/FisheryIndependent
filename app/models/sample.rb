class Sample < ApplicationRecord

  belongs_to :trip, inverse_of: :samples

  has_many :drops, inverse_of: :sample, dependent: :destroy
  accepts_nested_attributes_for :drops, reject_if: proc { |attribbutes| attributes[:drop_number].blank? }  , allow_destroy: true


end
