require 'spec_helper'

describe "StaticPages" do

	let(:base_title) {"Ruby on Rails Tutorial Sample App"}

  describe "Home page" do
		it "should have the right title" do
			visit '/static_pages/home'
			page.should have_selector('title', :text => "#{base_title} | Home")
		end

    it "should have the content 'Sample App'" do

      visit '/static_pages/home'
      page.should have_content('Sample App')
    end
  end

	describe "Help page" do
		it "should have the right title" do
			visit '/static_pages/help'
			page.should have_selector('title', :text => "#{base_title} | Help")
		end

		it "should have the content 'Help'" do
			
			visit '/static_pages/help'
			page.should have_content('Help')
		end
	end

	describe "About page" do
		it "should have the right title" do
			visit '/static_pages/about'
			page.should have_selector('title', :text => "#{base_title} | About us")
		end

		it "should have the content 'About'" do
		
			visit '/static_pages/about'
			page.should have_content('About')
		end
	end

	describe "Contact page" do
		it "should have the right title" do
			
			visit "/static_pages/contact"
			page.should have_selector('title', :text => "#{base_title} | Contact")
		end

		it "should have the content 'Contact'" do
			
			visit "/static_pages/contact"
			page.should have_content('Contact')
		end
	end
end
