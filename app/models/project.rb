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
#  user_id     :integer
#

class Project < ActiveRecord::Base
  # validations
  validates :url, :presence => true
  validates :name, :uniqueness => true, :presence => true
  
  # associations
  belongs_to :user
  has_many :tasks, :dependent => :destroy
  accepts_nested_attributes_for :tasks, 
                                :reject_if => proc {|t| t['title'].blank? },
                                :allow_destroy => true

end
