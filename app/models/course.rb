class Course < ApplicationRecord
	has_many :subjects
	belongs_to :lecturer
	has_many :students
end
