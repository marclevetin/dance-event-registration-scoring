class Person < ApplicationRecord
  validates first_name, presence: true
  validates last_name, presence: true
  validates :wsdc_id, numericality: true

  belongs_to :event
end
