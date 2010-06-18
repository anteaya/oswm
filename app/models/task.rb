# == Schema Information
#
# Table name: tasks
#
#  id          :integer         not null, primary key
#  project_id  :integer
#  title       :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Task < ActiveRecord::Base
  # validations
  # validates :title, :description, :presence => true
  
  # associations
  belongs_to :project
end
