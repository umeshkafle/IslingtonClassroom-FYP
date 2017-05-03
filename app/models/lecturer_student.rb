class LecturerStudent < ApplicationRecord
	belongs_to :lecturer
	belongs_to :student
	has_many :assignments
end
