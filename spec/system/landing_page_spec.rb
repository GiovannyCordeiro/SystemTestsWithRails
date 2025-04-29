require 'rails_helper'

RSpec.describe "LandingPageSystem", type: :feature do
  describe "GET /index" do
    it 'first test' do
      visit '/landing_page'
      expect(page).to have_content('Landing Page')
    end
  end
end
