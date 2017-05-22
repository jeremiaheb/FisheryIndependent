class Sample < ApplicationRecord

  belongs_to :trips, inverse_of: :samples

end
