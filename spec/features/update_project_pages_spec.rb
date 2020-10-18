require 'rails_helper'

describe 'it updates a beers information' do 
  it 'updates name' do 
        visit products_path
        click_link 'add product'
        fill_in 'Name', :with => 'Rolling Rock'
        fill_in 'Cost', :with => 6
        fill_in "Country of origin", :with => 'USA'
        click_on 'Create Product'
        click_on 'Rolling Rock'
        click_on 'Edit'
        fill_in 'Name', :with => 'Sierra Nevada'
        click_on 'Update Product'
        expect(page).to have_content 'Sierra Nevada'
      end
    end