require "rails_helper"

describe "user can search by street" do
  it "when they input street name" do
    stub_omniauth
    visit root_path

    click_link "Sign in with Google"

    visit "/routes"
    fill_in :q, with: "Washington"
    select "St", from: "suffix"
    click_button "search"

    expect(page).to have_content("Showing Routes for Washington St")
    expect(page).to have_content("Washington St Corey Rd Commonwealth Ave")
  end
end

def stub_omniauth
  OmniAuth.config.test_mode = true
  OmniAuth.config.mock_auth[:google] =
    OmniAuth::AuthHash.new({
      provider: "google",
         uid: "12345678910",
         info: {
           email: "james.p.anderson16@gmail.com",
           first_name: "James",
           last_name: "Anderson"
         },
         credentials: {
           token: "abcdefg12345",
           refresh_token: "12345abcdefg",
           expires_at: DateTime.now,
         }
      })
end
