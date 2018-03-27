require 'rails_helper'

describe "When I visit a student edit" do
  scenario "I submit a new name" do
    student = Student.create!(name:"Jake")
    visit edit_student_path(student)

    fill_in "student[name]", with: "Rambo"
    click_button "Update"

    expect(current_path).to eq("/students/#{student.id}")
    expect(page).to have_content("Rambo")
    expect(page).to_not have_content("Jake")
  end
end
