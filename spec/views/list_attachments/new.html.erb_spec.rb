require 'rails_helper'

RSpec.describe "list_attachments/new", type: :view do
  before(:each) do
    assign(:list_attachment, ListAttachment.new(
      :list_id => 1,
      :image => "MyString"
    ))
  end

  it "renders new list_attachment form" do
    render

    assert_select "form[action=?][method=?]", list_attachments_path, "post" do

      assert_select "input#list_attachment_list_id[name=?]", "list_attachment[list_id]"

      assert_select "input#list_attachment_image[name=?]", "list_attachment[image]"
    end
  end
end
