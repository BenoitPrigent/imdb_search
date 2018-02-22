class Movie < ApplicationRecord
  belongs_to :director


  include PgSearch
  pg_search_scope :global_search,
     against: [ :title, :syllabus ],
     associated_against: {
       director: [ :first_name, :last_name ]
     },
     using: {
       tsearch: { prefix: true }
     }

  # include PgSearch
  # multisearchable against: [ :title, :syllabus ]

end
