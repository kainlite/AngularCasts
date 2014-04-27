require 'spec_helper'

describe Screencast do
  it 'should visit the home and see the list of casts', js: true do
    visit root_path

    page.should have_title("AngularCasts")

    row_count = all('li').size

    expect(row_count).to be == 3
  end

  it 'should select a screencast and mark it as active' do
    visit root_path

    cast = all('h3')[1]

    cast.click()

    cast = all('h3')[1]
    page.should have_selector('h3.active')
  end
end
