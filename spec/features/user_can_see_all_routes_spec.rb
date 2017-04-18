require "rails_helper"

describe "user can see list of all routes" do
  xit "when they visit all_routes page" do

    visit "/all_routes"

    expect(page).to have_content("")
    expect(page).to have_content("")
  end
end
