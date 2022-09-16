# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end

  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Author', with: 'JK Rowling'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('JK Rowling')
  end

  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Price', with: '26.95'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content(26.95)
  end

  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'published_date', with: '2019-01-13'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('2019-01-13')
  end
end

