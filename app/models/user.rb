class User < ApplicationRecord
  # has_one :gopay
  validates :name, presence: {message: 'Harus diisi nih, enggak boleh kosong'}
  has_secure_password
end
