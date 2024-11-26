class College < ApplicationRecord
  include UniqueId

  self.primary_key = :id 
  before_create :generate_unique_id

  has_many :courses
  has_many :users
end
