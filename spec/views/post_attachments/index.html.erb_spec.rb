require 'rails_helper'

RSpec.describe "post_attachments/index", type: :view do
  before(:each) do
    assign(:post_attachments, [
      PostAttachment.create!(
        :post_id => 1,
        :image => "Image"
      ),
      PostAttachment.create!(
        :post_id => 1,
        :image => "Image"
      )
    ])
  end

  it "renders a list of post_attachments" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
  end
end
