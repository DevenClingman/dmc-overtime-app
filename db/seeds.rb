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
  Post.create!(date: Date.today, rationale: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?", 
    user: User.first, overtime_request: 2.5)
end

puts "100 posts created"


AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 6.days))
AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 13.days))
AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 20.days))


puts "3 audit logs have been created"



