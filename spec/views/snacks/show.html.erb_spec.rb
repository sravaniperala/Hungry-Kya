require 'rails_helper'

RSpec.describe "snacks/show", type: :view do
  before(:each) do
    @snack = assign(:snack, Snack.create!(
      :name => "Name",
      :vendor => "Vendor",
      :price => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Vendor/)
    expect(rendered).to match(/1/)
  end
end
