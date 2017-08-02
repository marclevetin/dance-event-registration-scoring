class Contest < ApplicationRecord
  validates :title, presence: true

  belongs_to :event
end
