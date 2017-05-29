class Catch < ApplicationRecord

  belongs_to :sample, inverse_of: :catches
  belongs_to :animal, inverse_of: :catches

  validates :animal_id, :fork_length, :girth, presence: true

end
