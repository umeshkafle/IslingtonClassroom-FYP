class LecturerSubject < ApplicationRecord

	belongs_to :Lecturer
	belongs_to :subject
end
