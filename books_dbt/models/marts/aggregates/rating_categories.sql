select 
	bookID, 
	title, 
	authors,
		case
			when average_rating <= 3 then 'Not recomended'
            when average_rating <= 4 and average_rating > 3 then 'Okay'
            else 'Must read'
		end as Recommendation
from {{ ref('books_data') }}