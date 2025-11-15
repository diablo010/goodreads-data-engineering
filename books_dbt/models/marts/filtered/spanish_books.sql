
select
    bookID,
    title,
    authors,
    language_code
from {{ ref('books_data') }}
where language_code = 'spa'