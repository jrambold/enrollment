require 'rails_helper'

describe "user can use navigation" do
  scenario "I click on links in the nav bar" do
    student = Student.create!(name:"Jake")
    visit student_path(student)

    expect(current_path).to eq("/students/#{student.id}")

    click_link "Students"

    expect(current_path).to eq("/students")

    click_link "Create"

    expect(current_path).to eq("/students/new")

  end
end
