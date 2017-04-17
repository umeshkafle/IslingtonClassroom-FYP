class LecturerStudent < ApplicationRecord
	belongs_to :lecturer
	belongs_to :student
end
