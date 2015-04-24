require 'rails_helper'

RSpec.describe "snacks/new", type: :view do
  before(:each) do
    assign(:snack, Snack.new(
      :name => "MyString",
      :vendor => "MyString",
      :price => 1
    ))
  end

  it "renders new snack form" do
    render

    assert_select "form[action=?][method=?]", snacks_path, "post" do

      assert_select "input#snack_name[name=?]", "snack[name]"

      assert_select "input#snack_vendor[name=?]", "snack[vendor]"

      assert_select "input#snack_price[name=?]", "snack[price]"
    end
  end
end
