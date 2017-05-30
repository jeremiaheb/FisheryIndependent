class Drop < ApplicationRecord

  belongs_to :sample, inverse_of: :drops

  validates :drop_number, presence: true, numericality: { only_integer: true }
  validates :lines, :start_time, :start_depth, :end_time, :end_depth, :fish_caught, presence: true
  validates :start_lat_deg, :start_lon_deg, :end_lat_deg, :end_lon_deg, numericality: { only_integer: true }
  validates :start_lat_min, :start_lon_min, :end_lat_min, :end_lon_min, presence: true

end
