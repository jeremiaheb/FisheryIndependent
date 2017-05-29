class Drop < ApplicationRecord

  belongs_to :sample, inverse_of: :drops

  validates :drop_number, presence: true, numericality: { only_integer: true }
  validates :lines, :start_time, :start_depth, :start_lat, :start_lon, :end_time, :end_depth, :end_lat, :end_lon, :fish_caught, presence: true

end
