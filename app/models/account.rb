class Account < ApplicationRecord

  validates :account_no, uniqueness: true, presence: true
  validates :balance, presence: true
  validates :account_type, presence: true

end
