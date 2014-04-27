require 'spec_helper'

describe Screencast do
  fixtures :screencasts

  it "gets /api/screencasts.json" do
    visit "/api/screencasts.json"
    response.body == Screencast.all.to_json
    screencasts = JSON.parse(response.body)
    screencasts.size.should eq(3) # because there are three fixtures (see screencasts.yml)
    assert screencasts.any? { |s| s["title"] == screencasts(:fast_rails_commands).title }
  end

  it "gets /api/screencasts/:id" do
    screencast = screencasts(:fast_rails_commands)
    visit "/api/screencasts/#{screencast.id}.json"
    response.body == screencast.to_json
    assert JSON.parse(response.body)["title"] == screencast.title
  end
end
