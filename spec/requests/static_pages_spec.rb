=begin
require 'rails_helper'

RSpec.describe "StaticPages", type: :request do
  describe "GET /static_pages" do
    it "works! (now write some real specs)" do
      get static_pages_index_path
      expect(response).to have_http_status(200)
    end
  end
end
=end

require 'spec_helper'

describe "Static pages" do

    describe "Home page" do

          it "should have the content 'Sample App'" do
                  visit '/static_pages/home'
                        expect(page).to have_content('Sample App')
                            end
          it "should have the base title" do
                  visit '/static_pages/home'
                        expect(page).to have_title("Ruby on Rails Tutorial Sample App")
                            end

          it "should not have a custom page title" do
                  visit '/static_pages/home'
                        expect(page).not_to have_title('| Home')
                            end
          end
end
