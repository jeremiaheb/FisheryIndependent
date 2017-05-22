class Sample < ApplicationRecord

  belongs_to :trip, inverse_of: :samples


end
