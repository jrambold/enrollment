require 'rails_helper'

describe "When I visit students" do
  scenario "I can delete a student" do
    student = Student.create!(name:"Jake")
    visit students_path

    click_link "Delete"

    expect(page).to_not have_content(student.name)
  end
end
