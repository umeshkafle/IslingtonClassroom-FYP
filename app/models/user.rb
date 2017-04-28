class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :invitable

         has_many :uploads

  def student?
    type == 'Student'
  end

  def lecturer?
    type == 'Lecturer'
  end

end
