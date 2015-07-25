require 'rails_helper'

RSpec.describe "lists/show", type: :view do
  before(:each) do
    @list = assign(:list, List.create!(
      :name => "Name",
      :sqft => 1.5,
      :rooms => 1,
      :built_year => 2,
      :cost => "9.99",
      :address => "Address"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Address/)
  end
end
