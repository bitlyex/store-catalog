class Account < ApplicationRecord
  has_many :stores
  has_one :payment

	# validates :account, numericality: { allow_nil: true }
  # validates :price, numericality: {greater_than_or_equal_to: 150000}, if: :page_more_than_300
  validates :name, presence: {message: 'Judul harus diisi'}, exclusion: {in: ['bitch', 'stupid', 'fuck']}, uniqueness: true
  validates :email, presence: {message: 'Format email salah'}, format: {with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i}, uniqueness: true
  validates :phone_number, numericality: {message: 'Nomor harus diisi'}, uniqueness: true
  validates :user_role, presence: {message: 'User role harus diisi'}
  validates :status, presence: {message: 'Status harus diisi'}

  ## DECLARATION OF CODE ## 

  # def page_more_than_300
  #   page >= 300
  # end

  def self.status(status)
    where('status <=> ?', status)
  end

  def self.as(user_role)
    where('user_role <=> ?', user_role)
  end

  def self.finds(id)
    where('id <=> ?', id)
  end
end

