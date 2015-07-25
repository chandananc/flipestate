require 'rails_helper'

RSpec.describe "list_attachments/show", type: :view do
  before(:each) do
    @list_attachment = assign(:list_attachment, ListAttachment.create!(
      :list_id => 1,
      :image => "Image"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Image/)
  end
end
