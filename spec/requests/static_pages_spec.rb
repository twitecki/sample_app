require 'spec_helper'

describe "StaticPages" do

#Alternate way of writing tests using the variant of the it method
  describe "Home Page" do
    before { visit root_path } 
    subject { page }

    it {should have_content('Sample App') }  
    it {should have_title("Ruby on Rails Tutorial Sample App | Home") }  
  end

#Another way of writing tests using the variant of the it method

  describe "Help Page" do
  before { visit help_path } 
    it "should have the content 'Help'" do
      expect(page).to have_content('Help')
    end
    it "should have the title 'Help'" do
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
    end
  end

  describe "About Page" do
  before { visit about_path } 
    it "should have the content 'About'" do
      expect(page).to have_content('About')
    end

    it "should have the title 'About Us'" do
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | About Us")
    end
  end

  describe "Contact Page" do
  before { visit contact_path} 
    it "should have the content 'Contact'" do
      expect(page).to have_content('contact')
    end

    it "should have the title 'Contact'" do
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Contact")
    end
  end

end
