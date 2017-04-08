class Student < User
	has_many :student_subject
	has_many :subjects, through: :student_subject
	has_many :lecturer_students
	has_many :lecturers, through: :lecturer_student
	belongs_to :course

end
