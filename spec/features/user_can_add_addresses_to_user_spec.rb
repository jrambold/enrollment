require 'rails_helper'

describe "User can add addresses to a student" do
  scenario "from student addresses new" do
    student = Student.create!(name:"Jake")
    visit "/students/#{student.id}/addresses/new"

    fill_in "student[description]", with: "rambo"
    fill_in "student[street]", with: "Starry"
    fill_in "student[city]", with: "Castle"
    fill_in "student[state]", with: "CO"
    fill_in "student[zip]", with: "80109"
    click_button "Create"

    expect(current_path).to eq("/students/#{student.id}")
    expect(page).to have_content("rambo")
    expect(page).to have_content("Starry")
    expect(page).to have_content("Castle")
    expect(page).to have_content("CO")
    expect(page).to have_content("80109")
  end
end
