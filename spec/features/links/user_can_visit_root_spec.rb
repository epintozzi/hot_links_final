require "rails_helper"

describe "/" do
  scenario "user can visit root" do
    visit root_path

    expect(page).to have_content("Hot Reads")
  end
end
