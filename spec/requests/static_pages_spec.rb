require 'spec_helper'

describe "Static pages" do
  subject { page }
  
  
  describe "Home page" do
    before { visit root_path }
    let(:heading)    { 'Sample App' }
    let(:page_title) { 'Home' }

    it "should have the content 'Home'" do
      expect(page).to have_content('Home')
    end

    it "should have the title 'WEM'" do
      expect(page).to have_title('WEM')
    end
  end

  describe "Help page" do
    before { visit help_path }

    let(:heading)    { 'Help' }
    let(:page_title) { 'Help' }

    it "should have the content 'faq'" do
      expect(page).to have_content('faq')
    end
    it "should have the title 'Help'" do
      expect(page).to have_title('Help')
    end
  end
end