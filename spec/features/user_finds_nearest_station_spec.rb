require 'rails_helper'

describe "user sees nearest station" do
  scenario "user inputs start location" do

    visit '/'

    page.select("Turing", :from => "location")

    click_on 'Find Nearest Station'

    expect(current_path).to eq('/search')

    expect(page).to have_css(".name")
    expect(page).to have_css(".address")
    expect(page).to have_css(".fuel_type")
    expect(page).to have_css(".access_times")
    expect(page).to have_css(".distance")
    expect(page).to have_css(".travel_time")
    expect(page).to have_css(".directions")
  end
end
