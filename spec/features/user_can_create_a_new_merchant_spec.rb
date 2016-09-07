require 'rails_helper'

RSpec.feature "user can create a new merchant" do
  context "with valid params" do
    scenario "user fills out form and creates a new merchant" do
      visit merchants_path
      click_on "New Merchant"
      fill_in "merchant_name", with: "Test1"
      fill_in "merchant_items_type", with: "Test Items"
      click_on "Create Merchant"

      expect(page).to have_content "TEST1"
      expect(page).to have_content "TEST ITEMS"
      expect(page).to have_link "All Merchants", href: merchants_path
    end
  end

  context "with invalid params" do
    scenario "user fills out form without name" do
      visit merchants_path
      click_on "New Merchant"
      fill_in "merchant_items_type", with: "Test Items"
      click_on "Create Merchant"

      expect(page).to have_content "Name can't be blank"
    end
  end

end
