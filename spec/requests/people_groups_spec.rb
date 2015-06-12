require 'rails_helper'

RSpec.describe "PeopleGroups", type: :request do
  describe "GET /people_groups" do
    it "works! (now write some real specs)" do
      get people_groups_path
      expect(response).to have_http_status(200)
    end
  end
end
