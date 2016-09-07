require 'rails_helper'

RSpec.feature "user can see all merchants" do
  scenario "user can see all marchants on the index page" do
    merchant = Merchant.create(name: "Test", items_type: "Goods")

    visit merchants_path

    expect(page).to have_content merchant.name
    expect(page).to have_link merchant.name, href: merchant_path(merchant )
  end
end
