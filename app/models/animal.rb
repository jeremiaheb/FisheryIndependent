class Animal < ApplicationRecord

  has_many :catches, dependent: :destroy
  has_many :samples, through: :catches
  accepts_nested_attributes_for :catches, allow_destroy: true

end
