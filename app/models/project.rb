# == Schema Information
#
# Table name: projects
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  url         :string(255)
#  description :text
#  involvement :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Project < ActiveRecord::Base
end
