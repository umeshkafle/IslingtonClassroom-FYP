class Upload < ApplicationRecord

  belongs_to :subject
  mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.
end
