select 
    publisher, 
    avg(text_reviews_count) as 'Average review count'
from  {{ ref('books_data') }}
group by publisher
order by publisher