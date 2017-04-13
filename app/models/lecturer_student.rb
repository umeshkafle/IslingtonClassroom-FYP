class LecturerStudent < ApplicationRecord
	belongs_to :Lecturer
	belongs_to :student
end
