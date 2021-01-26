class Client < ApplicationRecord
  has_many :tickets, dependent: :destroy
end
