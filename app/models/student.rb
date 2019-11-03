class Student < ApplicationRecord
	has_many :unit_tests
	has_many :tests, through: :unit_tests
end
