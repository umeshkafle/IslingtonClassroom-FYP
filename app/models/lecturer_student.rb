class LecturerStudent < ApplicationRecord
  belongs_to :lecturer
  belongs_to :student
  has_many :uploads
  has_many :assignments
  has_many :materials
end
