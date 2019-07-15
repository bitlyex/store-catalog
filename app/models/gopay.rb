class Gopay < ApplicationRecord
  # belongs_to :user

  def self.more
    where('balance >= 50000')
  end

  def self.less
    where('balance <= 50000')
  end

  def self.equal_more(balance)
    where('balance >= ?', balance)
  end

  def self.fewer_than(balance)
    where('balance <= ?', balance)
  end
end
