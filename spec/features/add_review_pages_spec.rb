require 'rails_helper'

describe 'add a review to a beer' do 
  it 'adds a review to a beer' do 
    visit products_path 
    click_link 'add product'
    fill_in 'Name', :with => 'Rolling Rock'
    fill_in 'Cost', :with => 6
    fill_in "Country of origin", :with => 'USA'
    click_on 'Create Product'
    click_on 'Rolling Rock'
    click_on 'Add a review'
    fill_in 'Author', :with => 'Forrest'
    fill_in 'Content body', :with => 'great lager'
    fill_in 'Rating', :with => 4
    click_on 'Create Review'
    expect(page).to have_content('great lager')
  end
end