class Section < ActiveRecord::Base
	belongs_to :product
	has_many :points
end
