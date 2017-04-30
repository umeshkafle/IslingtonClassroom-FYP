class Material < Upload
  belongs_to :subject
  belongs_to :lecturer
  belongs_to :student
end
