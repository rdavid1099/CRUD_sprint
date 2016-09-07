require 'rails_helper'

RSpec.feature "user can edit existing user" do
  scenario "user can change a merchant's name and item_type" do
    merchant = Merchant.create(name: "Test", items_type: "Goods")

    visit merchant_path(merchant)
    click_on "Edit #{merchant.name}"
    fill_in "merchant_name", with: "Different name"
    click_on "Update Merchant"

    expect(page).to have_content "DIFFERENT NAME"
    expect(page).to_not have_content "Test"
  end
end
