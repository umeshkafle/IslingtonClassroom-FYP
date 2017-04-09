class Subject < ApplicationRecord
	belongs_to :course
	belongs_to :lecturer
	belongs_to :student
	has_many :uploads

	enum student_class: [:computing, :networking, :multimedia, :bba]
end
