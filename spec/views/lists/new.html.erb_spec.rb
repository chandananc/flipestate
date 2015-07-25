require 'rails_helper'

RSpec.describe "lists/new", type: :view do
  before(:each) do
    assign(:list, List.new(
      :name => "MyString",
      :sqft => 1.5,
      :rooms => 1,
      :built_year => 1,
      :cost => "9.99",
      :address => "MyString"
    ))
  end

  it "renders new list form" do
    render

    assert_select "form[action=?][method=?]", lists_path, "post" do

      assert_select "input#list_name[name=?]", "list[name]"

      assert_select "input#list_sqft[name=?]", "list[sqft]"

      assert_select "input#list_rooms[name=?]", "list[rooms]"

      assert_select "input#list_built_year[name=?]", "list[built_year]"

      assert_select "input#list_cost[name=?]", "list[cost]"

      assert_select "input#list_address[name=?]", "list[address]"
    end
  end
end
