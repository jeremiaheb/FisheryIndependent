class Sample < ApplicationRecord

  belongs_to :trip, inverse_of: :samples

  has_many :drops, inverse_of: :sample, dependent: :destroy
  accepts_nested_attributes_for :drops, allow_destroy: true


  has_many :catches, inverse_of: :sample, dependent: :destroy
  accepts_nested_attributes_for :catches, allow_destroy: true
  has_many :animals, through: :catches, inverse_of: :sample

  
  validates :drops, length: { minimum: 1 }
  validates :catches, length: { minimum: 1 }

end
