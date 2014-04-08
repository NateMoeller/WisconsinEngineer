require 'spec_helper'

describe "Static pages" do

  describe "Home page" do
    before { visit root_path }
    let(:heading)    { 'Sample App' }
    let(:page_title) { 'home' }

    it "should have the content 'home'" do
      expect(page).to have_content('home')
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

  describe "Form page" do

    before { visit form_path }
    let(:heading)    { 'form' }
    let(:page_title) { 'magazine form' }

    it "should have the content 'form'" do
      expect(page).to have_content('form')
    end

    it "should have the title 'magazine form'" do
      expect(page).to have_title('magazine form')
    end
  end
end