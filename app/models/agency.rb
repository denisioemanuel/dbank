class Agency < ApplicationRecord
  validates :number, :address, presence: true
end
