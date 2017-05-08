class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :invitable

         has_many :uploads
         has_many :messages
         has_many :conversations, foreign_key: :sender_id

  def student?
    type == 'Student'
  end

  def lecturer?
    type == 'Lecturer'
  end

end
