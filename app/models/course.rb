class Course < ApplicationRecord
  include UniqueId

  self.primary_key = :id 
  before_create :generate_unique_id

  belongs_to :college
  has_many :enrollments
end
