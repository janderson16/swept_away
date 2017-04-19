require "rails_helper"

describe "user can see list of all routes" do
  it "when they visit all_routes page" do
    stub_omniauth
    visit root_path

    click_link "Sign in with Google"

    visit "/all_routes"
    # save_and_open_page

    expect(page).to have_content("Ackley Pl Washington St Dead End 2nd M 08:00 12:00 Even")
  end

  it "but not without credentials" do

    visit "/all_routes"

    expect(page).to have_content("404")
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
