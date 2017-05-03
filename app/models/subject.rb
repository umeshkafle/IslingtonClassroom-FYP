class Subject < ApplicationRecord
	has_many :lecturer_subjects
	has_many :lecturer, through: :lecturer_subjects
	has_many :uploads
	belongs_to :course
	has_many :student_subjects
	has_many :students, through: :student_subjects
	has_many :assignments
	has_many :announcements
	has_many :materials
	has_many :uploads
	enum student_class: [:computing, :networking, :multimedia, :bba]

	def self.all_subject_titles
     all.map(&:title)
    end
end
