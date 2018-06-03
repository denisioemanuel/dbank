class Account < ApplicationRecord
  belongs_to :Agency
  validates :number, :limit, presence: true
end
