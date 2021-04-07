json.array! @films do |film|
    json.extract! film, :id, :title, :release_date, :directed_by, :rating, :genre
end