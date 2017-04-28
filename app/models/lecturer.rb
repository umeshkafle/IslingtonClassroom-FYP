class Lecturer < User

	belongs_to :course
	has_many :lecturer_subjects
	has_many :subjects, through: :lecturer_subjects
	has_many :lecturer_students
	has_many :students, through: :lecturer_students
	has_many :materials
	has_many :announcements
	has_many :assignments
end
