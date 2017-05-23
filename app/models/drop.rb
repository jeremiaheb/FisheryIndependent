class Drop < ApplicationRecord

  belongs_to :sample, inverse_of: :drops

end
