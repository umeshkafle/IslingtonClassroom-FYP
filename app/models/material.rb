class Material < Upload
  belongs_to :subject
  belongs_to :lecturer
  belongs_to :student
  belongs_to :student_subject
  belongs_to :lecturer_subject
end
