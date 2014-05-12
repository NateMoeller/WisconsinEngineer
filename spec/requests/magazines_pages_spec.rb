require 'spec_helper'

describe "MagazinesPages" do
  subject { page }
  
  
  describe "new magazine" do
    before { visit "/magazines/new" }

    it "should have the content 'Magazine Form'" do
      expect(page).to have_content('Magazine Form')
    end
	
    it "should have the title 'Magazine Form'" do
      expect(page).to have_title('Magazine')
    end
  end
end
