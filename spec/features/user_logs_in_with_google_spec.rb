require "rails_helper"

describe "user logs in" do
  it "using google oauth2" do
    stub_omniauth
    visit root_path

    within(".home-sign-in") do
      expect(page).to have_link("Sign in with Google")
      click_link "Sign in with Google"
    end
    expect(page).to have_content("James Anderson")
    expect(page).to have_link("Sign out")
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
