require 'rails_helper'

RSpec.describe "cs/new", type: :view do
  before(:each) do
    assign(:c, C.new(
      :name => "MyString"
    ))
  end

  it "renders new c form" do
    render

    assert_select "form[action=?][method=?]", cs_path, "post" do

      assert_select "input#c_name[name=?]", "c[name]"
    end
  end
end
