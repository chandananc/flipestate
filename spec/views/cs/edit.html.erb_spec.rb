require 'rails_helper'

RSpec.describe "cs/edit", type: :view do
  before(:each) do
    @c = assign(:c, C.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit c form" do
    render

    assert_select "form[action=?][method=?]", c_path(@c), "post" do

      assert_select "input#c_name[name=?]", "c[name]"
    end
  end
end
