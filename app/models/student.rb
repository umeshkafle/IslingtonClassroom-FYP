class Student < User
  has_many :lecturer_students
  has_many :lecturers, through: :lecturer_students
  has_many :student_subjects
  has_many :subjects, through: :student_subjects

end
