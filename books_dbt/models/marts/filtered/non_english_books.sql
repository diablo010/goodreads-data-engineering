select
    bookID,
    title,
    language_code
from {{ ref('books_data') }}
where language_code not in ('eng', 'en-US', 'en-GB')