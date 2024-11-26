# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

address = Address.create({name: "gudele one"})
college = College.create({name: "computer science and information technology"})

User.create!({email: "admin@learning.edu.ss", password: "123456", role: "admin", address_id: address.id, college_id: college.id })

User.create!({email: "tutor@learning.edu.ss", password: "123456", role: "tutor", address_id: address.id, college_id: college.id})

User.create!({email: "student@learning.edu.ss", password: "123456", address_id: address.id, college_id: college.id})