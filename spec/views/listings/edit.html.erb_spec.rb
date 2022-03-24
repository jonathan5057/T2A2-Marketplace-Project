require 'rails_helper'

RSpec.describe "listings/edit", type: :view do
  before(:each) do
    @listing = assign(:listing, Listing.create!(
      category: "MyString",
      title: "MyString",
      quantity: 1,
      price: 1.5,
      user: nil
    ))
  end

  it "renders the edit listing form" do
    render

    assert_select "form[action=?][method=?]", listing_path(@listing), "post" do

      assert_select "input[name=?]", "listing[category]"

      assert_select "input[name=?]", "listing[title]"

      assert_select "input[name=?]", "listing[quantity]"

      assert_select "input[name=?]", "listing[price]"

      assert_select "input[name=?]", "listing[user_id]"
    end
  end
end
