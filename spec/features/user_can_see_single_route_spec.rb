require "rails_helper"

describe "user can see one route" do
  it "when they visit show page" do
    stub_omniauth
    visit root_path

    click_link "Sign in with Google"

    visit "/all_routes"
    within(".route12") do
      click_link "Show Map"
    end
    expect(current_path).to eq("/routes/12")
    expect(page).to have_content("Abbotsford St Walnut Ave Harold St 1st")
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
