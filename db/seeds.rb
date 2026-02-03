User.create!([
  {username: "Melissa"},
  {username: "Andrea"}
])
Book.create!([
  {title: "Harry Potter", author: "JK Rowling", price: "10.99", published_date: "2026-02-03"}
  {title: "Harry Potter 2", author: "JK Rowling", price: "10.99", published_date: "2026-02-03"}
  {title: "Harry Potter 3", author: "JK Rowling", price: "10.99", published_date: "2026-02-03"}
  {title: "Harry Potter 4", author: "JK Rowling", price: "10.99", published_date: "2026-02-03"}
  {title: "Harry Potter 5", author: "JK Rowling", price: "10.99", published_date: "2026-02-03"}

])
UserBook.create!([
  {user_id: 2, book_id: 1}
  {user_id: 1, book_id: 3}

])
