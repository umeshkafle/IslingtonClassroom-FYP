class Announcement < Upload
  belongs_to :subject
  belongs_to :lecturer
  belongs_to :student
  belongs_to :lecturer_subject
  belongs_to :student_subject
end