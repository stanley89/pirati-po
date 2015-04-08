require 'rails_helper'

RSpec.describe "PeopleSkills", :type => :request do
  describe "GET /people_skills" do
    it "works! (now write some real specs)" do
      get people_skills_path
      expect(response.status).to be(200)
    end
  end
end
