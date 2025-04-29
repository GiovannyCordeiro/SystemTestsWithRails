require 'rails_helper'

RSpec.describe "LandingPageSystem", type: :feature do
  before do
    visit landing_page_path
  end


  describe "GET /index" do
    it "first test" do
      expect(page).to have_content('Landing Page')
    end

    it "Negative question" do
      fill_in "name", with: "giovanny cordeiro"
      fill_in "number", with: 200

      dismiss_confirm do
        click_button "Submit"
      end

      expect(current_path).to eq(landing_page_path)
    end

    it "Confirmation question" do
      fill_in "name", with: "giovanny cordeiro"
      fill_in "number", with: 200

      accept_confirm do
        click_button "Submit"
      end

      expect(current_path).to eq(root_path)
    end
  end
end
