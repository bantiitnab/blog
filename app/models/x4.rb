class X4 < ApplicationRecord
	has_and_belongs_to_many :x1s
	has_many :x1s, :through => :x1x4s
end
