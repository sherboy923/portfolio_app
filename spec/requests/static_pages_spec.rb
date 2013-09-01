require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the h1 'Sherman St. Hill" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Sherman St. Hill')
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "Sherman St. Hill Portfolio | Home")
    end
  end

  describe "About page" do

  	it "should have the content 'About me'" do
  		visit '/static_pages/about'
  		page.should have_selector('h1', :text => 'About me')
  	end

    it "should have the title 'About Me'" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => "Sherman St. Hill Portfolio | About Me")
    end
  end

  describe "Projects page" do
  	
  	it "should have the content 'My Projects'" do
  		visit '/static_pages/projects'
  		page.should have_selector('h1', :text => 'My Projects')
  	end

    it "should have the title 'My Projects'" do
      visit '/static_pages/projects'
      page.should have_selector('title', :text => "Sherman St. Hill Portfolio | My Projects")
    end
  end

  describe "Journey page" do

    it "should have the content 'My Journey'" do
      visit '/static_pages/journey'
      page.should have_selector('h1', :text => 'My Journey')
    end

    it "should have the title 'My Journey'" do
      visit '/static_pages/journey'
      page.should have_selector('title', :text => "Sherman St. Hill Portfolio | My Journey")
    end
  end

  describe "Contact page" do

    it "should have the content 'Contact me'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => 'Contact me')
    end

    it "should have the title 'Contact Me'" do
      visit '/static_pages/contact'
      page.should have_selector('title', :text => "Sherman St. Hill Portfolio | Contact Me")
    end
  end
end
