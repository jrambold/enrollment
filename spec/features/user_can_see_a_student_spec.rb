require 'rails_helper'

describe "As a user" do
  describe "When I visit a student" do
    scenario "I see the name of a student" do
      student = Student.create!(name:"Jake")
      visit student_path(student)

      expect(current_path).to eq("/students/#{student.id}")
      expect(page).to have_content(student.name)
    end
  end
end
