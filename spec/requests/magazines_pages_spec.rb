require 'spec_helper'

describe "MagazinesPages" do
  subject { page }
  
  
  describe "new magazine" do
    before { visit signin_path }
	let(:user) { FactoryGirl.create(:user) }
      before do
        fill_in "Email",    with: user.email.upcase
        fill_in "Password", with: user.password
        click_button "Sign in"
      end 
    before { visit "/magazines/new" }
	
    it "should have the content 'Magazine Form'" do
      expect(page).to have_content('Magazine Form')
    end
	
    it "should have the title 'Magazine Form'" do
      expect(page).to have_title('Magazine Form')
    end
  end
end
