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

require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
