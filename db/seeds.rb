# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

1.times do |user|
  @user = User.create!(first_name: "Sammie", 
                last_name: "Holst", email: "myemail@email.com",
                password: "asdfasdf", 
                password_confirmation: "asdfasdf",
                phone: "3853991830")
end

puts "1 User now exists"

1.times do |user|
  AdminUser.create!(first_name: "Deven",
                   last_name: "clingman", 
                   email: "myadmin@admin.com",
                  password: "asdfasdf", 
                  password_confirmation: "asdfasdf",
                  phone: "3853991830")
end

puts "1 Admin now exists"

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user: User.first, overtime_request: 2.5)
end

puts "100 posts created"


100.times do |audit_log|
  AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 6.days))
end

puts "100 audit logs have been created"



