select
    publisher,
    count(bookID) as num_of_books,
from {{ ref('books_data') }}
group by publisher