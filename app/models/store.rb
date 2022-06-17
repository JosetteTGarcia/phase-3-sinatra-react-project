class Store < ActiveRecord::Base
  has_many :payments

  validates :name, presence: true, uniqueness: true

end