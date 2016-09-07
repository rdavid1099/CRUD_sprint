require 'rails_helper'

RSpec.feature "user can see an individual merchant" do
  scenario "user clicks on merchant's link and sees that individual merchant" do
    merchant = Merchant.create(name: "Test", items_type: "Goods")

    visit merchants_path
    click_on merchant.name

    expect(page).to have_content merchant.name.upcase
    expect(page).to have_content merchant.items_type.upcase
  end
end
