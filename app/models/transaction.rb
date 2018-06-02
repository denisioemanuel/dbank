class Transaction < ApplicationRecord
  belongs_to :User
  belongs_to :Account
end
