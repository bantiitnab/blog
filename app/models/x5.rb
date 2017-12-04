class X5 < ApplicationRecord
	has_many :x7s
	has_many :x6s, :through => :x7s
end
