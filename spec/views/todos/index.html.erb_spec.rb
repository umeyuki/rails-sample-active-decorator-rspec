require 'rails_helper'

RSpec.describe "todos/index", type: :view do
  before(:each) do
    assign(:todos, [
      Todo.create!(
        :title => "Title",
        :content => "Content"
      ),
      Todo.create!(
        :title => "Title",
        :content => "Content"
      )
    ])
  end

  it "renders a list of todos" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Content".to_s, :count => 2
  end
end
