class Course < ApplicationRecord
	has_many :subjects
	has_many :lecturer
	has_many :students
end
