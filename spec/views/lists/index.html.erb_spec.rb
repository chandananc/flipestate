require 'rails_helper'

RSpec.describe "lists/index", type: :view do
  before(:each) do
    assign(:lists, [
      List.create!(
        :name => "Name",
        :sqft => 1.5,
        :rooms => 1,
        :built_year => 2,
        :cost => "9.99",
        :address => "Address"
      ),
      List.create!(
        :name => "Name",
        :sqft => 1.5,
        :rooms => 1,
        :built_year => 2,
        :cost => "9.99",
        :address => "Address"
      )
    ])
  end

  it "renders a list of lists" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
  end
end
