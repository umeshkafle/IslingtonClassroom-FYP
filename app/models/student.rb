class Student < User
	belongs_to :course
	has_many :lect_students
	has_many :lecturers, through: :lect_students
	has_many :stude_subjects
	has_many :subjects, through: :stude_subjects
end
