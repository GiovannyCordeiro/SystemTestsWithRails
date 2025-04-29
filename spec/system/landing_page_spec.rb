require 'rails_helper'

RSpec.describe "LandingPageSystem", type: :feature do
  describe "GET /index" do
    it 'first test' do
      visit '/landing_page'
      expect(page).to have_content('Landing Page')
    end

    it "allows to submit" do
      visit '/landing_page'
      fill_in 'name', with: 'giovanny cordeiro'
      fill_in 'number', with: 50
      click_button 'Submit'

      expect(current_path).to eq(root_path)
    end
  end
end
