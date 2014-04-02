require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'home'" do
      visit '/static_pages/home'
      expect(page).to have_content('home')
    end
  end

  describe "Help page" do

    it "should have the content 'faq'" do
      visit '/static_pages/help'
      expect(page).to have_content('faq')
    end
  end

  describe "Form page" do

    it "should have the content 'form'" do
      visit '/static_pages/form'
      expect(page).to have_content('form')
    end
  end
end