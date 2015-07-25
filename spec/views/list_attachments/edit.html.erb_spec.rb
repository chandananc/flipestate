require 'rails_helper'

RSpec.describe "list_attachments/edit", type: :view do
  before(:each) do
    @list_attachment = assign(:list_attachment, ListAttachment.create!(
      :list_id => 1,
      :image => "MyString"
    ))
  end

  it "renders the edit list_attachment form" do
    render

    assert_select "form[action=?][method=?]", list_attachment_path(@list_attachment), "post" do

      assert_select "input#list_attachment_list_id[name=?]", "list_attachment[list_id]"

      assert_select "input#list_attachment_image[name=?]", "list_attachment[image]"
    end
  end
end
