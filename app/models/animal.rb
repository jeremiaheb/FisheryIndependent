class Animal < ApplicationRecord

  has_many :catches, inverse_of: :animal, dependent: :destroy
  has_many :samples, inverse_of: :animal, through: :catches
  accepts_nested_attributes_for :catches, allow_destroy: true

end
