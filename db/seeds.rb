# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
users_to_create       = 30
max_projects_per_user = 5
max_tasks_per_project = 5
User.destroy_all
Project.destroy_all
Task.destroy_all

(1..users_to_create).each do |num|
  puts '-----'
  puts "creating user_#{num}@example.com"
  u = User.create(:email    => "user_#{num}@example.com",
                  :password => 'password',
                  :password_confirmation => 'password')
              
  projects_to_create = rand(max_projects_per_user)+1
  puts "Has #{projects_to_create} projects"
  (1..projects_to_create).each do |proj|
    p = Project.create(:name    => "project #{proj} for #{u.id}",
                       :user_id => u.id,
                       :url     => "www.zomg-#{proj}.com")
    
    tasks_to_create = rand(max_tasks_per_project)+1
    puts "Has #{tasks_to_create} tasks"
    (1..tasks_to_create).each do |task|
      Task.create(:title => "Task #{task}", :project_id => p.id)
    end # task creation
  end # project creation
end # user creation

