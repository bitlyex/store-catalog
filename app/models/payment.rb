class Payment < ApplicationRecord
  belongs_to :account
	# validates :payment, numericality: { allow_nil: true }
end
