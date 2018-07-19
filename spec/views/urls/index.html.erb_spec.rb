require 'rails_helper'

RSpec.describe "urls/index.html.erb", type: :view do
  
  it "displays the table" do
    assign :table_head_one, "Long URL"
    assign :table_head_two, "Shortened URL"
    assign :table_body_one, "xxx"
    assign :table_body_two, "yyy"

    render

    expect(rendered).to match /Long URL/
    expect(rendered).to match /Shortened URL/   
    expect(rendered).to match /xxx/
    expect(rendered).to match /yyy/
    expect(rendered).to match /Create Shortened URL/
  end

  feature "Shortened Url" do
    scenario "User wants a shortened url" do
      visit '/'
      click_link('Create Shortened URL')
      current_path.should eq(new_url_path)
      expect(page).to have_content "Shorten your URL"
    end
  end
end

