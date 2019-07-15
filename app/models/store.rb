class Store < ApplicationRecord
  belongs_to :account
  belongs_to :payment

  validates :name_store, presence: {message: 'harus diisi'}

  def self.subdistrict(subdistrict)
    where('subdistrict <=> ?', subdistrict)
  end
end
