class Upload < ApplicationRecord
  belongs_to :lecturer
  belongs_to :student
  belongs_to :subject
  belongs_to :lecturer_subject
  belongs_to :student_subject

  mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.
end
