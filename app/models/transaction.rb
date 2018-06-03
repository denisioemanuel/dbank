class Transaction < ApplicationRecord
  belongs_to :User
  belongs_to :Account
  validates :date, :value, :type, presence:true, acceptance: { message: ' é obrogatório.' }
end
