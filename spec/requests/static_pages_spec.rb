require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "Sherman St. Hill Portfolio" }
  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_selector('h1', text: 'Sherman St. Hill') }
    it { should have_selector('title', text: "#{base_title}") }
    it { should_not have_selector('title', text: '| Home') }
  end

  describe "About page" do
    before { visit about_path }

  	it { should have_selector('h1', text: 'About me') }
    it { should have_selector('title', text: "#{base_title} | About Me") }
  end

  describe "Projects page" do
    before { visit projects_path }
  	
  	it { should have_selector('h1', text: 'My Projects') }
    it { should have_selector('title', text: "#{base_title} | My Projects") }
  end

  describe "Journey page" do
    before { visit journey_path }

    it { should have_selector('h1', text: 'My Journey') }
    it { should have_selector('title', text: "#{base_title} | My Journey") }
  end

  describe "Resume page" do
    before { visit resume_path }

    it { should have_selector('h1', text: 'Sherman St. Hill') }
    it { should have_selector('title', text: "#{base_title} | Resume") }
  end

  describe "Contact page" do
    before { visit contact_path }

    it { should have_selector('h1', text: 'Contact me') }
    it { should have_selector('title', :text => "#{base_title} | Contact Me") }
  end

  it "should have the right links on the layout" do
    visit root_path
    page.should have_selector 'title', text: full_title('')
    click_link 'about me'
    page.should have_selector 'title', text: full_title('About Me')
    click_link 'my journey'
    page.should have_selector 'title', text: full_title('My Journey')
    click_link 'my projects'
    page.should have_selector 'title', text: full_title('My Projects')
    click_link 'resume'
    page.should have_selector 'title', text: full_title('Resume')
    click_link 'contact'
    page.should have_selector 'title', text: full_title('Contact Me')
  end
end
 