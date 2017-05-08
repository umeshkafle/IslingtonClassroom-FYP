class LecturerSubject < ApplicationRecord
  belongs_to :lecturer
  belongs_to :subject
  has_many :uploads
  has_many :assignments
  has_many :materials
  has_many :announcements

end
