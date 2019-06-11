def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year 
  FROM books
  GROUP BY books.title
  HAVING series_id <= 1  
  ORDER BY books.year ASC;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT characters.name, characters.motto
  FROM characters
  GROUP BY characters.motto
  HAVING LENGTH(motto) > 0
  ORDER BY motto ASC
  LIMIT 1; "
end


def select_value_and_count_of_most_prolific_species
  "SELECT characters.species, COUNT(characters.species) 
  FROM characters
  GROUP BY characters.species
  ORDER BY species DESC
  LIMIT 1; "
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name
  FROM authors
  INNER JOIN subgenres  
  ON authors.id = subgenres.id
  GROUP BY authors.name;"
end

def select_series_title_with_most_human_characters
  "SELECT series.title
  FROM series
  INNER JOIN characters 
  ON series.id = characters.series_id
  WHERE species = 'human'
  GROUP BY characters.species 
  ORDER BY species ASC;"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT(book_id) AS count
  FROM characters
  INNER JOIN character_books  
  WHERE character_books.character_id = characters.id
  GROUP BY name
  ORDER BY count DESC;"
end
