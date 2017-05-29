class Trip < ApplicationRecord
  
  belongs_to :captain
  belongs_to :user
  belongs_to :manager

  has_many :samples, inverse_of: :trip, dependent: :destroy
  has_many :drops, through: :samples

  has_many :catches, through: :samples

  accepts_nested_attributes_for :samples, allow_destroy: true


  validates :samples, length: { minimum: 1 }

  validates :user_id, :manager_id, :date, :vessel,  :captain_id, :depart_time, :return_time, presence: true
  validate :return_time_after_departure_time

  def return_time_after_departure_time
    if depart_time > return_time
      errors.add(:return_time, "must be after departure time")
    end
  end
end
