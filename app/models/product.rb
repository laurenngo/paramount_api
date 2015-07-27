class Product < ActiveRecord::Base

	has_many :glances, :sections
end
