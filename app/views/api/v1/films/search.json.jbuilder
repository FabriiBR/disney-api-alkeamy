json.extract! @film, :id, :title, :release_date, :directed_by, :rating, :genre
json.characters @film.characters do |character|
    json.extract! character, :id, :name
  end