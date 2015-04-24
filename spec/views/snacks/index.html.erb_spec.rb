require 'rails_helper'

RSpec.describe "snacks/index", type: :view do
  before(:each) do
    assign(:snacks, [
      Snack.create!(
        :name => "Name",
        :vendor => "Vendor",
        :price => 1
      ),
      Snack.create!(
        :name => "Name",
        :vendor => "Vendor",
        :price => 1
      )
    ])
  end

  it "renders a list of snacks" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Vendor".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
