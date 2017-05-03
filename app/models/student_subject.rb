class StudentSubject < ApplicationRecord

	belongs_to :student
	belongs_to :subject
	has_many :assignments
	has_many :materials
	has_many :announcements
	# validates :title, presence: true

    # def self.all_subject_titles
    #  all.map(&:title)
    # end
end
