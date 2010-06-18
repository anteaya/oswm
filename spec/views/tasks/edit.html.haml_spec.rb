require 'spec_helper'

describe "tasks/edit.html.haml" do
  before(:each) do
    assign(:task, @task = stub_model(Task,
      :new_record? => false
    ))
  end

  it "renders the edit task form" do
    render

    rendered.should have_selector("form", :action => task_path(@task), :method => "post") do |form|
    end
  end
end
