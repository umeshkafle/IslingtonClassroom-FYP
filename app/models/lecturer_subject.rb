class LecturerSubject < ApplicationRecord

	belongs_to :lecturer
	belongs_to :subject
	has_many :assignments
	has_many :materials
end
