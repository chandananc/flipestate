require 'rails_helper'

RSpec.describe "list_attachments/index", type: :view do
  before(:each) do
    assign(:list_attachments, [
      ListAttachment.create!(
        :list_id => 1,
        :image => "Image"
      ),
      ListAttachment.create!(
        :list_id => 1,
        :image => "Image"
      )
    ])
  end

  it "renders a list of list_attachments" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
  end
end
