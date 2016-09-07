require 'rails_helper'

RSpec.feature "user can delete merchant" do
  scenario "user can delete merchan and end up of the index page" do
    merchant1 = Merchant.create(name: "Test1", items_type: "Goods1")
    merchant2 = Merchant.create(name: "Test2", items_type: "Goods2")

    visit merchant_path(merchant1)
    click_on "Delete #{merchant1.name}"

    expect(page).to have_content merchant2.name
    expect(page).to_not have_content merchant1.name
  end
end
