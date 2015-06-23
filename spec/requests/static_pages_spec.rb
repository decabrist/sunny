require 'rails_helper'

RSpec.describe "StaticPages", type: :request do




  describe "visit hepl page /static_pages/help" do
    it "check help word on the page" do
      # get page
      visit 'static_pages/help'
      # expect find 'help' text
      expect(page).to have_content('help')
    end
  end


  describe "visit /static_pages/home" do
    it "check 1 word at home page" do
  #    get static_pages_index_path
      visit '/static_pages/home'
 #     expect(response).to have_http_status(200)
      expect(page).to have_content('Sunny')
    end

    it "check big stroke at home page" do
  #    get static_pages_index_path
      visit '/static_pages/home'
 #     expect(response).to have_http_status(200)
      expect(page).to have_content('sanny application by smile')
    end

    it "Ruby on Rails Tutorial Sample App | Home" do
      visit '/static_pages/home'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home") 
    end
  end

  describe "GET /static_pages/help" do
    it "check 200 status on help page" do
        #get static_pages_index_path
      get '/static_pages/help'
      expect(response).to have_http_status(200)
    end

    it "Ruby on Rails Tutorial Sample App | Help" do
      visit '/static_pages/home'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help") 
    end
  end

  describe "About page" do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "Ruby on Rails Tutorial Sample App | About" do
      visit '/static_pages/home'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | About") 
    end
  end

end
