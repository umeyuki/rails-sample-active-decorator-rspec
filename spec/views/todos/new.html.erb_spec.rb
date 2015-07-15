require 'rails_helper'

RSpec.describe "todos/new", type: :view do
  before(:each) do
    assign(:todo, Todo.new(
      :title => "MyString",
      :content => "MyString"
    ))
  end

  it "renders new todo form" do
    render

    assert_select "form[action=?][method=?]", todos_path, "post" do

      assert_select "input#todo_title[name=?]", "todo[title]"

      assert_select "input#todo_content[name=?]", "todo[content]"
    end
  end
end
