class X1 < ApplicationRecord
	has_many :x2s
	has_many :x3s
	has_and_belongs_to_many :x4s
	has_many :x4s, :through => :x1x4s
end

