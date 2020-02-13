require "rails_helper"

feature "User creates todo" do
  scenario "successfully" do
    visit root_path
    click_on "Create a new todo"
    fill_in "Title", :with => "Buy 12 eggs"
    click_button "Submit"
    expect(page).to have_css(".todos li", text: "Buy 12 eggs")
  end
end
