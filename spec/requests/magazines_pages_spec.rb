require 'spec_helper'

describe "MagazinesPages" do
  subject { page }
  
  
  describe "magazines page" do
    before { visit magazines_path }

    it "should have the content 'Magazine Form'" do
      expect(page).to have_content('Magazine Form')
    end
	
    it "should have the title 'Magazine Form'" do
      expect(page).to have_title('Magazine Form')
    end
  end
end
