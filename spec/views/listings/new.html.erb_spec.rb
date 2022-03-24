require 'rails_helper'

RSpec.describe "listings/new", type: :view do
  before(:each) do
    assign(:listing, Listing.new(
      category: "MyString",
      title: "MyString",
      quantity: 1,
      price: 1.5,
      user: nil
    ))
  end

  it "renders new listing form" do
    render

    assert_select "form[action=?][method=?]", listings_path, "post" do

      assert_select "input[name=?]", "listing[category]"

      assert_select "input[name=?]", "listing[title]"

      assert_select "input[name=?]", "listing[quantity]"

      assert_select "input[name=?]", "listing[price]"

      assert_select "input[name=?]", "listing[user_id]"
    end
  end
end
