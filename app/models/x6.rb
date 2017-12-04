class X6 < ApplicationRecord
	has_many :x7s
	has_many :x5s, :through => :x7s
end
