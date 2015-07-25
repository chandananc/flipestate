require 'rails_helper'

RSpec.describe "cs/index", type: :view do
  before(:each) do
    assign(:cs, [
      C.create!(
        :name => "Name"
      ),
      C.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of cs" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
