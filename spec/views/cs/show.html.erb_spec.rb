require 'rails_helper'

RSpec.describe "cs/show", type: :view do
  before(:each) do
    @c = assign(:c, C.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
