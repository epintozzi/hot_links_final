require "rails_helper"

describe "/" do
  scenario "user can visit root" do
    visit root_path

    expect(page).to have_content("Hot Reads")
  end
  scenario "user only sees 10 links on root" do
    create_list(:link, 11)

    visit root_path

    expect(page).to have_selector('.link-item', count: 10)
  end
end
