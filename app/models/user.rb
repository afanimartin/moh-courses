class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :validatable, :trackable

  include UniqueId

  self.primary_key = :id 
  before_create :generate_unique_id

  enum role: { student: "student", tutor: "tutor", admin: "admin" }

  belongs_to :college
  belongs_to :address
  has_many :enrollments

end
