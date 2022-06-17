class Category < ActiveRecord::Base
has_many :payments

validates :category_type, presence: true, uniqueness: true

end


