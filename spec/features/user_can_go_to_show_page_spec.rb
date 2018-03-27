require 'rails_helper'

describe "user can use navigation" do
  scenario "I click on links in the nav bar" do
    student = Student.create!(name:"Jake")
    visit students_path

    expect(current_path).to eq("/students")

    click_link "Jake"

    expect(current_path).to eq("/students/#{student.id}")

  end
end
