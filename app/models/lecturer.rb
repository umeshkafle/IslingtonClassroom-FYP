class Lecturer < User
	belongs_to :course
	has_many :lecturer_subjects
	has_many :subjects, through: :lecturer_subjects
	has_many :lect_students
	has_many :students, through: :lect_students
end
