class Employee < ActiveRecord::Base

  belongs_to :store

  validates :first_name, presence: true, length: { minimum: 3 }
  validates :last_name, presence: true
  validates :hourly_rate, inclusion: 40..200
  validates :store_id, presence: true

end
