require 'spec_helper'

describe "tasks/new.html.haml" do
  before(:each) do
    assign(:task, stub_model(Task,
      :new_record? => true
    ))
  end

  it "renders new task form" do
    render

    rendered.should have_selector("form", :action => tasks_path, :method => "post") do |form|
    end
  end
end
