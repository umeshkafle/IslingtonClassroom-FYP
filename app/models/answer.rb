class Answer < ApplicationRecord
	belongs_to :assignment
	belongs_to :student

	mount_uploader :attachment, AttachmentUploader
end
