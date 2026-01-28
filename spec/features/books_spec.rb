require 'rails_helper'

RSpec.describe "Book Management", type: :feature do
  it "adds book with title and shows flash notice" do
    visit new_book_path

    fill_in "Title", with: "Book Title Test"
    fill_in "Author", with: "Book Author Test"
    fill_in "Price", with: 10.00

    select "2025", from: "book_published_date_1i"
    select "January", from: "book_published_date_2i"
    select "1", from: "book_published_date_3i"
    
    click_button "Create Book"

    expect(page).to have_content("Book was successfully created.")
    expect(page).to have_content("Book Title Test")
  end

  it "flash notice is an error when title is blank" do
    visit new_book_path

    fill_in "Title", with: ""
    click_button "Create Book"

    expect(page).to have_content("Title can't be blank")
  end
    
  it "creates a book when author is provided" do
    visit new_book_path

    fill_in "Title", with: "Book Title"
    fill_in "Author", with: "Book Author Test"
    fill_in "Price", with: 10.00

    select "2025", from: "book_published_date_1i"
    select "January", from: "book_published_date_2i"
    select "1", from: "book_published_date_3i"

    click_button "Create Book"

    expect(page).to have_content("Book was successfully created.")
    expect(page).to have_content("Book Author Test")
  end
    
  it "creates a book when price is provided" do
    visit new_book_path

    fill_in "Title", with: "Book Title"
    fill_in "Author", with: "Book Author"
    fill_in "Price", with: 10.00

    select "2025", from: "book_published_date_1i"
    select "January", from: "book_published_date_2i"
    select "1", from: "book_published_date_3i"

    click_button "Create Book"

    expect(page).to have_content("Book was successfully created.")
    expect(page).to have_content("10.00")
  end
    
  it "creates a book when published date is provided" do
    visit new_book_path

    fill_in "Title", with: "Book Title"
    fill_in "Author", with: "Book Author"
    fill_in "Price", with: 10.00

    select "2025", from: "book_published_date_1i"
    select "January", from: "book_published_date_2i"
    select "1", from: "book_published_date_3i"

    click_button "Create Book"

    expect(page).to have_content("Book was successfully created.")
  end
  

end
