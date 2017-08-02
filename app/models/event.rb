class Event < ApplicationRecord
  validates :event_name, presence: true

  has_many :contests
  has_many :judges
  has_many :people
end
