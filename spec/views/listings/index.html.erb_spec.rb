require 'rails_helper'

RSpec.describe "listings/index", type: :view do
  before(:each) do
    assign(:listings, [
      Listing.create!(
        category: "Category",
        title: "Title",
        quantity: 2,
        price: 3.5,
        user: nil
      ),
      Listing.create!(
        category: "Category",
        title: "Title",
        quantity: 2,
        price: 3.5,
        user: nil
      )
    ])
  end

  it "renders a list of listings" do
    render
    assert_select "tr>td", text: "Category".to_s, count: 2
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.5.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
