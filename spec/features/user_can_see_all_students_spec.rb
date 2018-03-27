require 'rails_helper'

describe "When I visit students" do
  scenario "I see a list of student names" do
    student = Student.create!(name:"Jake")
    student1 = Student.create!(name:"Rambo")
    visit students_path

    expect(page).to have_content(student.name)
    expect(page).to have_content(student1.name)
  end
end
