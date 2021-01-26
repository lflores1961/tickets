class Ticket < ApplicationRecord
  enum status: { open: 0, closed: 1 }
  belongs_to :client
end
