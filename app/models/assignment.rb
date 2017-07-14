class Assignment < Upload

  belongs_to :subject
  has_many :answers

end
