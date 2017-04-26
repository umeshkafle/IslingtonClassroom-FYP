class Upload < ApplicationRecord
	belongs_to :lecturer
	belongs_to :student
	belongs_to :subject
end
