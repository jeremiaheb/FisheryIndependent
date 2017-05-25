class Manager < ApplicationRecord

  has_many :trips, inverse_of: :manager

end
