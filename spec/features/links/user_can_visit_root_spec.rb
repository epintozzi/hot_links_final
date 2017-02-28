require "rails_helper"

describe "/" do
  scenario "user can visit root" do
    visit root_path

    expect(page).to have_content("Hot Reads")
  end
  scenario "user sees links on root" do
    link_1, link_2, link_3 = create_list(:link, 3)

    visit root_path

    expect(page).to have_content(link_1.url)
    expect(page).to have_content(link_2.url)
    expect(page).to have_content(link_3.url)
  end
  scenario "user only sees 10 links on root" do
    create_list(:link, 11)

    visit root_path

    expect(page).to have_selector('.link-item', count: 10)
  end
end
