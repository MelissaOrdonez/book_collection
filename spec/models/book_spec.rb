require 'rails_helper'

RSpec.describe Book, type: :model do
  it "Book is valid with a title" do
    book = Book.new(title: "Book Title", author: "Book Author", price: 15.99, published_date: Date.new(2025, 1, 1))
    expect(book).to be_valid
  end

  it "Book is invalid without a title" do
    book = Book.new(title: "")
    expect(book).to_not be_valid
  end
    
  it "Book needs an author" do
    book = Book.new(title: "Book Title", author: "")
    expect(book).to_not be_valid
  end
    
  it "Book needs an price" do
    book = Book.new(title: "Book Title", price: nil)
    expect(book).to_not be_valid
  end
    
  it "Book needs an published date" do
    book = Book.new(title: "Book Title", published_date: nil)
    expect(book).to_not be_valid
  end
end