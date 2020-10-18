require 'rails_helper'

describe 'add a new beer' do 
  it 'adds a new beer' do 
    visit products_path
    click_link 'add product'
    fill_in 'Name', :with => 'Rolling Rock'
    fill_in 'Cost', :with => 6
    fill_in "Country of origin", :with => 'USA'
    click_on 'Create Product'
    expect(page).to have_content 'Rolling Rock'
  end
end