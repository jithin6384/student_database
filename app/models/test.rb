class Test < ApplicationRecord
	has_many :unit_tests
	has_many :students, through: :unit_tests
end
