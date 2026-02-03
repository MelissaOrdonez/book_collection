User.create!([
  { username: "Melissa" },
  { username: "Andrea" }
])

if Rails.env.development?
  Book.create!([
    { title: "Harry Potter (DEV)", author: "JK Rowling", price: 10.99, published_date: "2026-02-03" },
    { title: "Harry Potter 2 (DEV)", author: "JK Rowling", price: 11.99, published_date: "2026-02-03" },
    { title: "Harry Potter 3 (DEV)", author: "JK Rowling", price: 12.99, published_date: "2026-02-03" }
  ])
end

if Rails.env.production?
  Book.create!([
    { title: "Harry Potter (PROD)", author: "JK Rowling", price: 15.99, published_date: "2026-02-03" },
    { title: "Harry Potter 2 (PROD)", author: "JK Rowling", price: 16.99, published_date: "2026-02-03" }
  ])
end

if Rails.env.test?
  Book.create!([
    { title: "Harry Potter (TEST)", author: "JK Rowling", price: 1.99, published_date: "2026-02-03" }
  ])
end

UserBook.create!([
  { user_id: 2, book_id: 1 },
  { user_id: 1, book_id: 3 }
])
