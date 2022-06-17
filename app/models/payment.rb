class Payment < ActiveRecord::Base
belongs_to :category 
belongs_to :store

validates :amount, presence: true

end