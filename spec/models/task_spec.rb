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

require 'spec_helper'

describe Task do
  pending "add some examples to (or delete) #{__FILE__}"
end
