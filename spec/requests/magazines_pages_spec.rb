require 'spec_helper'

describe "MagazinesPages" do
  describe "magazines page" do
    before { visit form_path }

    it "should have the content 'Magazine Form'" do
      expect(page).to have_content('Magazine Form')
    end
    it "should have the title 'magazine form'" do
      expect(page).to have_title('magazine form')
    end
  end
end
