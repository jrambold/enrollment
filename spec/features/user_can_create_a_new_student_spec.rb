require 'rails_helper'

describe "User creates a new category" do
  scenario "a user can create a new category" do
    visit new_student_path

    fill_in "student[name]", with: "Rambo"
    click_button "Create"

    expect(current_path).to eq("/students")
    expect(page).to have_content("Rambo")
  end
end
