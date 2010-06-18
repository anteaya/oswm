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

require 'spec_helper'

describe Project do
  describe "factories" do
    before(:each) do
      @project = Factory.create(:project)
    end
    
    it "should be valid" do
      @project.should be_valid
    end
  end
  
  describe "validations" do
    before(:each) do
      @project = Project.new
    end
    
    it "a new project should not be valid" do
      @project.should_not be_valid
    end
    
    it "should contain errors on a blank url or name" do
      @project.save
      [:url,:name].each do |attrib|
        @project.errors.should include({attrib=>["can't be blank"]})
      end
    end
    
    it "should contain errors on the name being unique" do
      project = Project.create(:name => 'foo', :url => 'www.bar.org')
      @project.name = 'foo'
      @project.save
      @project.errors.should include({:name=>["has already been taken"]})
    end

  end
end
