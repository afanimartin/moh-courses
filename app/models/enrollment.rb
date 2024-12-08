class Enrollment < ApplicationRecord
  include UniqueId

  self.primary_key = :id 
  before_create :generate_unique_id

  belongs_to :user
  belongs_to :course
end
